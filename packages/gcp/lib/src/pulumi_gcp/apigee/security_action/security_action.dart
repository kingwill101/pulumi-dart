import 'package:pulumi/pulumi.dart';
import '../security_action_condition_config/security_action_condition_config.dart';
import '../security_action_deny/security_action_deny.dart';
import '../security_action_flag/security_action_flag.dart';
import 'security_action_args.dart';

/// A SecurityAction is rule that can be enforced at an environment level.
/// The result is one of: - A denied API call - An explicitly allowed API call
/// - A flagged API call (HTTP headers added before the target receives it)
/// At least one condition is required to create a SecurityAction.
///
///
/// To get more information about SecurityAction, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.securityActions/create)
/// * How-to Guides
/// * [Creating security actions](https://cloud.google.com/apigee/docs/api-security/security-actions-api#create-security-actions)
///
/// ## Example Usage
///
/// ### Apigee Security Action Basic
///
///
///
///
/// ## Import
///
/// SecurityAction can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{env_id}}/securityActions/{{security_action_id}}`
///
/// * `{{org_id}}/{{env_id}}/{{security_action_id}}`
///
/// When using the `pulumi import` command, SecurityAction can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/securityAction:SecurityAction default organizations/{{org_id}}/environments/{{env_id}}/securityActions/{{security_action_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/securityAction:SecurityAction default {{org_id}}/{{env_id}}/{{security_action_id}}
/// ```
class SecurityAction extends CustomResource {
  /// Allow a request through if it matches this SecurityAction.
  late final Output<Map<String, dynamic>?> allow;

  /// If unset, this would apply to all proxies in the environment.
  /// If set, this action is enforced only if at least one proxy in the repeated
  /// list is deployed at the time of enforcement. If set, several restrictions are enforced on SecurityActions.
  /// There can be at most 100 enabled actions with proxies set in an env.
  /// Several other restrictions apply on conditions and are detailed later.
  late final Output<List<String>?> apiProxies;

  /// A valid SecurityAction must contain at least one condition.
  /// Structure is documented below.
  late final Output<SecurityActionConditionConfig> conditionConfig;

  /// The create time for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final Output<String> createTime;

  /// Deny a request through if it matches this SecurityAction.
  /// Structure is documented below.
  late final Output<SecurityActionDeny?> deny;

  /// An optional user provided description of the SecurityAction.
  late final Output<String?> description;

  /// The Apigee environment that this security action applies to.
  late final Output<String> envId;

  /// The expiration for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9
  /// fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final Output<String?> expireTime;

  /// Flag a request through if it matches this SecurityAction.
  /// Structure is documented below.
  late final Output<SecurityActionFlag?> flag;

  /// The organization that this security action applies to.
  late final Output<String> orgId;

  /// The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// This value should be 0-61 characters, and valid format is (^a-z?$).
  late final Output<String> securityActionId;

  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final Output<String> state;

  /// The TTL for this SecurityAction.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final Output<String?> ttl;

  /// The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final Output<String> updateTime;

  SecurityAction(
    String name, {
    SecurityActionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/securityAction:SecurityAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allow = registerOutput<Map<String, dynamic>?>('allow');
    this.apiProxies = registerOutput<List<String>?>('apiProxies');
    this.conditionConfig =
        registerOutput<SecurityActionConditionConfig>('conditionConfig');
    this.createTime = registerOutput<String>('createTime');
    this.deny = registerOutput<SecurityActionDeny?>('deny');
    this.description = registerOutput<String?>('description');
    this.envId = registerOutput<String>('envId');
    this.expireTime = registerOutput<String?>('expireTime');
    this.flag = registerOutput<SecurityActionFlag?>('flag');
    this.orgId = registerOutput<String>('orgId');
    this.securityActionId = registerOutput<String>('securityActionId');
    this.state = registerOutput<String>('state');
    this.ttl = registerOutput<String?>('ttl');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
