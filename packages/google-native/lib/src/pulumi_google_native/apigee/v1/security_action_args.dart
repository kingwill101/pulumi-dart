// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_security_action_condition_config.dart';
import 'google_cloud_apigee_v1_security_action_deny.dart';
import 'google_cloud_apigee_v1_security_action_flag.dart';
import 'security_action_state.dart';

/// The set of arguments for SecurityAction.
class SecurityActionArgs {
  /// Allow a request through if it matches this SecurityAction.
  final Input<Map<String, dynamic>>? allow;

  /// A valid SecurityAction must contain at least one condition.
  final Input<GoogleCloudApigeeV1SecurityActionConditionConfig> conditionConfig;

  /// Deny a request through if it matches this SecurityAction.
  final Input<GoogleCloudApigeeV1SecurityActionDeny>? deny;

  /// Optional. An optional user provided description of the SecurityAction.
  final Input<String>? description;
  final Input<String> environmentId;

  /// The expiration for this SecurityAction.
  final Input<String>? expireTime;

  /// Flag a request through if it matches this SecurityAction.
  final Input<GoogleCloudApigeeV1SecurityActionFlag>? flag;

  /// Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the CreateSecurityActionRequest when creating a new SecurityAction. Format: organizations/{org}/environments/{env}/securityActions/{security_action}
  final Input<String>? name;
  final Input<String> organizationId;

  /// Required. The ID to use for the SecurityAction, which will become the final component of the action's resource name. This value should be 0-61 characters, and valid format is (^[a-z]([a-z0-9-]{​0,61}[a-z0-9])?$).
  final Input<String> securityActionId;

  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  final Input<SecurityActionState> state;

  /// Input only. The TTL for this SecurityAction.
  final Input<String>? ttl;

  SecurityActionArgs({
    this.allow,
    required this.conditionConfig,
    this.deny,
    this.description,
    required this.environmentId,
    this.expireTime,
    this.flag,
    this.name,
    required this.organizationId,
    required this.securityActionId,
    required this.state,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowValue = allow;
    if (allowValue != null) {
      map['allow'] = allowValue;
    }
    map['conditionConfig'] = Input.mapInputValue<
        GoogleCloudApigeeV1SecurityActionConditionConfig,
        Map<String, dynamic>>(conditionConfig, (value) => value.toMap());
    final denyValue = deny;
    if (denyValue != null) {
      map['deny'] = Input.mapOptionalInputValue<
          GoogleCloudApigeeV1SecurityActionDeny,
          Map<String, dynamic>>(denyValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final flagValue = flag;
    if (flagValue != null) {
      map['flag'] = Input.mapOptionalInputValue<
          GoogleCloudApigeeV1SecurityActionFlag,
          Map<String, dynamic>>(flagValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    map['securityActionId'] = securityActionId;
    map['state'] = Input.mapInputValue<SecurityActionState, String>(
        state, (value) => value.value);
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory SecurityActionArgs.fromMap(Map<String, dynamic> map) {
    return SecurityActionArgs(
      allow: Input.asOptionalInput<Map<String, dynamic>>(map['allow']),
      conditionConfig:
          Input.asInput<GoogleCloudApigeeV1SecurityActionConditionConfig>(
              map['conditionConfig']),
      deny: Input.asOptionalInput<GoogleCloudApigeeV1SecurityActionDeny>(
          map['deny']),
      description: Input.asOptionalInput<String>(map['description']),
      environmentId: Input.asInput<String>(map['environmentId']),
      expireTime: Input.asOptionalInput<String>(map['expireTime']),
      flag: Input.asOptionalInput<GoogleCloudApigeeV1SecurityActionFlag>(
          map['flag']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      securityActionId: Input.asInput<String>(map['securityActionId']),
      state: Input.asInput<SecurityActionState>(map['state']),
      ttl: Input.asOptionalInput<String>(map['ttl']),
    );
  }
}
