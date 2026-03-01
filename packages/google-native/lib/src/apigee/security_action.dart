import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_security_action_condition_config_response.dart';
import 'google_cloud_apigee_v1_security_action_deny_response.dart';
import 'google_cloud_apigee_v1_security_action_flag_response.dart';
import 'security_action_args.dart';

/// CreateSecurityAction creates a SecurityAction.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class SecurityAction extends pulumi.CustomResource {
  /// Allow a request through if it matches this SecurityAction.
  late final pulumi.Output<Map<String, dynamic>> allow;

  /// A valid SecurityAction must contain at least one condition.
  late final pulumi.Output<
    GoogleCloudApigeeV1SecurityActionConditionConfigResponse
  >
  conditionConfig;

  /// The create time for this SecurityAction.
  late final pulumi.Output<String> createTime;

  /// Deny a request through if it matches this SecurityAction.
  late final pulumi.Output<GoogleCloudApigeeV1SecurityActionDenyResponse> deny;

  /// Optional. An optional user provided description of the SecurityAction.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> environmentId;

  /// The expiration for this SecurityAction.
  late final pulumi.Output<String> expireTime;

  /// Flag a request through if it matches this SecurityAction.
  late final pulumi.Output<GoogleCloudApigeeV1SecurityActionFlagResponse> flag;

  /// Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the CreateSecurityActionRequest when creating a new SecurityAction. Format: organizations/{org}/environments/{env}/securityActions/{security_action}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Required. The ID to use for the SecurityAction, which will become the final component of the action's resource name. This value should be 0-61 characters, and valid format is (^[a-z]([a-z0-9-]{​0,61}[a-z0-9])?$).
  late final pulumi.Output<String> securityActionId;

  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  late final pulumi.Output<String> state;

  /// Input only. The TTL for this SecurityAction.
  late final pulumi.Output<String> ttl;

  /// The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SecurityAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityAction]. {@macro pulumi_apigee_v1_security_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityAction(
    String name, {
    SecurityActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:SecurityAction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.allow = registerOutput<Map<String, dynamic>>('allow');
    this.conditionConfig =
        registerOutput<
          GoogleCloudApigeeV1SecurityActionConditionConfigResponse
        >('conditionConfig');
    this.createTime = registerOutput<String>('createTime');
    this.deny = registerOutput<GoogleCloudApigeeV1SecurityActionDenyResponse>(
      'deny',
    );
    this.description = registerOutput<String>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.expireTime = registerOutput<String>('expireTime');
    this.flag = registerOutput<GoogleCloudApigeeV1SecurityActionFlagResponse>(
      'flag',
    );
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.securityActionId = registerOutput<String>('securityActionId');
    this.state = registerOutput<String>('state');
    this.ttl = registerOutput<String>('ttl');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
