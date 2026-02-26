// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../security_action_condition_config/security_action_condition_config.dart';
import '../security_action_deny/security_action_deny.dart';
import '../security_action_flag/security_action_flag.dart';

/// The set of arguments for SecurityAction.
class SecurityActionArgs {
  /// Allow a request through if it matches this SecurityAction.
  final Input<Map<String, dynamic>>? allow;

  /// If unset, this would apply to all proxies in the environment.
  /// If set, this action is enforced only if at least one proxy in the repeated
  /// list is deployed at the time of enforcement. If set, several restrictions are enforced on SecurityActions.
  /// There can be at most 100 enabled actions with proxies set in an env.
  /// Several other restrictions apply on conditions and are detailed later.
  final Input<List<String>>? apiProxies;

  /// A valid SecurityAction must contain at least one condition.
  /// Structure is documented below.
  final Input<SecurityActionConditionConfig> conditionConfig;

  /// Deny a request through if it matches this SecurityAction.
  /// Structure is documented below.
  final Input<SecurityActionDeny>? deny;

  /// An optional user provided description of the SecurityAction.
  final Input<String>? description;

  /// The Apigee environment that this security action applies to.
  final Input<String> envId;

  /// The expiration for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9
  /// fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final Input<String>? expireTime;

  /// Flag a request through if it matches this SecurityAction.
  /// Structure is documented below.
  final Input<SecurityActionFlag>? flag;

  /// The organization that this security action applies to.
  final Input<String> orgId;

  /// The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// This value should be 0-61 characters, and valid format is (^a-z?$).
  final Input<String> securityActionId;

  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final Input<String> state;

  /// The TTL for this SecurityAction.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final Input<String>? ttl;

  SecurityActionArgs({
    this.allow,
    this.apiProxies,
    required this.conditionConfig,
    this.deny,
    this.description,
    required this.envId,
    this.expireTime,
    this.flag,
    required this.orgId,
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
    final apiProxiesValue = apiProxies;
    if (apiProxiesValue != null) {
      map['apiProxies'] = apiProxiesValue;
    }
    map['conditionConfig'] = Input.mapInputValue<SecurityActionConditionConfig,
        Map<String, dynamic>>(conditionConfig, (value) => value.toMap());
    final denyValue = deny;
    if (denyValue != null) {
      map['deny'] =
          Input.mapOptionalInputValue<SecurityActionDeny, Map<String, dynamic>>(
              denyValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['envId'] = envId;
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final flagValue = flag;
    if (flagValue != null) {
      map['flag'] =
          Input.mapOptionalInputValue<SecurityActionFlag, Map<String, dynamic>>(
              flagValue, (value) => value.toMap());
    }
    map['orgId'] = orgId;
    map['securityActionId'] = securityActionId;
    map['state'] = state;
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory SecurityActionArgs.fromMap(Map<String, dynamic> map) {
    return SecurityActionArgs(
      allow: Input.asOptionalInput<Map<String, dynamic>>(map['allow']),
      apiProxies: Input.asOptionalInput<List<String>>(map['apiProxies']),
      conditionConfig:
          Input.asInput<SecurityActionConditionConfig>(map['conditionConfig']),
      deny: Input.asOptionalInput<SecurityActionDeny>(map['deny']),
      description: Input.asOptionalInput<String>(map['description']),
      envId: Input.asInput<String>(map['envId']),
      expireTime: Input.asOptionalInput<String>(map['expireTime']),
      flag: Input.asOptionalInput<SecurityActionFlag>(map['flag']),
      orgId: Input.asInput<String>(map['orgId']),
      securityActionId: Input.asInput<String>(map['securityActionId']),
      state: Input.asInput<String>(map['state']),
      ttl: Input.asOptionalInput<String>(map['ttl']),
    );
  }
}
