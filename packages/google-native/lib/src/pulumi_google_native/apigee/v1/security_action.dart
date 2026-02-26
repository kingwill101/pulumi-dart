import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_security_action_condition_config_response.dart';
import 'google_cloud_apigee_v1_security_action_deny_response.dart';
import 'google_cloud_apigee_v1_security_action_flag_response.dart';
import 'security_action_args.dart';

/// CreateSecurityAction creates a SecurityAction.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class SecurityAction extends CustomResource {
  /// Allow a request through if it matches this SecurityAction.
  late final Output<Map<String, dynamic>> allow;

  /// A valid SecurityAction must contain at least one condition.
  late final Output<GoogleCloudApigeeV1SecurityActionConditionConfigResponse>
      conditionConfig;

  /// The create time for this SecurityAction.
  late final Output<String> createTime;

  /// Deny a request through if it matches this SecurityAction.
  late final Output<GoogleCloudApigeeV1SecurityActionDenyResponse> deny;

  /// Optional. An optional user provided description of the SecurityAction.
  late final Output<String> description;
  late final Output<String> environmentId;

  /// The expiration for this SecurityAction.
  late final Output<String> expireTime;

  /// Flag a request through if it matches this SecurityAction.
  late final Output<GoogleCloudApigeeV1SecurityActionFlagResponse> flag;

  /// Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the CreateSecurityActionRequest when creating a new SecurityAction. Format: organizations/{org}/environments/{env}/securityActions/{security_action}
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Required. The ID to use for the SecurityAction, which will become the final component of the action's resource name. This value should be 0-61 characters, and valid format is (^[a-z]([a-z0-9-]{​0,61}[a-z0-9])?$).
  late final Output<String> securityActionId;

  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  late final Output<String> state;

  /// Input only. The TTL for this SecurityAction.
  late final Output<String> ttl;

  /// The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  late final Output<String> updateTime;

  SecurityAction(
    String name, {
    SecurityActionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:SecurityAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allow = registerOutput<Map<String, dynamic>>('allow');
    this.conditionConfig = registerOutput<
            GoogleCloudApigeeV1SecurityActionConditionConfigResponse>(
        'conditionConfig');
    this.createTime = registerOutput<String>('createTime');
    this.deny =
        registerOutput<GoogleCloudApigeeV1SecurityActionDenyResponse>('deny');
    this.description = registerOutput<String>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.expireTime = registerOutput<String>('expireTime');
    this.flag =
        registerOutput<GoogleCloudApigeeV1SecurityActionFlagResponse>('flag');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.securityActionId = registerOutput<String>('securityActionId');
    this.state = registerOutput<String>('state');
    this.ttl = registerOutput<String>('ttl');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
