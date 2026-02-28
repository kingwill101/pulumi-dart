// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_action_condition_config.dart';
import 'security_action_deny.dart';
import 'security_action_flag.dart';

/// {@template pulumi_apigee_security_action_security_action_args_doc}
/// The set of arguments for SecurityAction.
/// {@endtemplate}
/// {@macro pulumi_apigee_security_action_security_action_args_doc}
class SecurityActionArgs {
  /// Allow a request through if it matches this SecurityAction.
  final pulumi.Input<Map<String, dynamic>>? allow;

  /// If unset, this would apply to all proxies in the environment.
  /// If set, this action is enforced only if at least one proxy in the repeated
  /// list is deployed at the time of enforcement. If set, several restrictions are enforced on SecurityActions.
  /// There can be at most 100 enabled actions with proxies set in an env.
  /// Several other restrictions apply on conditions and are detailed later.
  final pulumi.Input<List<String>>? apiProxies;

  /// A valid SecurityAction must contain at least one condition.
  /// Structure is documented below.
  final pulumi.Input<SecurityActionConditionConfig> conditionConfig;

  /// Deny a request through if it matches this SecurityAction.
  /// Structure is documented below.
  final pulumi.Input<SecurityActionDeny>? deny;

  /// An optional user provided description of the SecurityAction.
  final pulumi.Input<String>? description;

  /// The Apigee environment that this security action applies to.
  final pulumi.Input<String> envId;

  /// The expiration for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9
  /// fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? expireTime;

  /// Flag a request through if it matches this SecurityAction.
  /// Structure is documented below.
  final pulumi.Input<SecurityActionFlag>? flag;

  /// The organization that this security action applies to.
  final pulumi.Input<String> orgId;

  /// The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// This value should be 0-61 characters, and valid format is (^a-z?$).
  final pulumi.Input<String> securityActionId;

  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;

  /// The TTL for this SecurityAction.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? ttl;

  /// Creates a new [SecurityActionArgs].
  /// [allow] Allow a request through if it matches this SecurityAction.
  /// [apiProxies] If unset, this would apply to all proxies in the environment.
  /// [conditionConfig] A valid SecurityAction must contain at least one condition.
  /// [deny] Deny a request through if it matches this SecurityAction.
  /// [description] An optional user provided description of the SecurityAction.
  /// [envId] The Apigee environment that this security action applies to.
  /// [expireTime] The expiration for this SecurityAction.
  /// [flag] Flag a request through if it matches this SecurityAction.
  /// [orgId] The organization that this security action applies to.
  /// [securityActionId] The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// [state] Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// [ttl] The TTL for this SecurityAction.
  SecurityActionArgs({
    Map<String, dynamic>? allow,
    List<String>? apiProxies,
    required SecurityActionConditionConfig conditionConfig,
    SecurityActionDeny? deny,
    String? description,
    required String envId,
    String? expireTime,
    SecurityActionFlag? flag,
    required String orgId,
    required String securityActionId,
    required String state,
    String? ttl,
  })  : allow = pulumi.Input.asOptionalInput<Map<String, dynamic>>(allow),
        apiProxies = pulumi.Input.asOptionalInput<List<String>>(apiProxies),
        conditionConfig = pulumi.Input.asInput<SecurityActionConditionConfig>(
            conditionConfig),
        deny = pulumi.Input.asOptionalInput<SecurityActionDeny>(deny),
        description = pulumi.Input.asOptionalInput<String>(description),
        envId = pulumi.Input.asInput<String>(envId),
        expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
        flag = pulumi.Input.asOptionalInput<SecurityActionFlag>(flag),
        orgId = pulumi.Input.asInput<String>(orgId),
        securityActionId = pulumi.Input.asInput<String>(securityActionId),
        state = pulumi.Input.asInput<String>(state),
        ttl = pulumi.Input.asOptionalInput<String>(ttl);

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
    map['conditionConfig'] = pulumi.Input.mapInputValue<
        SecurityActionConditionConfig,
        Map<String, dynamic>>(conditionConfig, (value) => value.toMap());
    final denyValue = deny;
    if (denyValue != null) {
      map['deny'] = pulumi.Input.mapOptionalInputValue<SecurityActionDeny,
          Map<String, dynamic>>(denyValue, (value) => value.toMap());
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
      map['flag'] = pulumi.Input.mapOptionalInputValue<SecurityActionFlag,
          Map<String, dynamic>>(flagValue, (value) => value.toMap());
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
      allow: map['allow'] == null
          ? null
          : (map['allow'] as Map).cast<String, dynamic>(),
      apiProxies: map['apiProxies'] == null
          ? null
          : (map['apiProxies'] as List).cast<String>(),
      conditionConfig: SecurityActionConditionConfig.fromMap(
          (map['conditionConfig'] as Map).cast<String, dynamic>()),
      deny: map['deny'] == null
          ? null
          : SecurityActionDeny.fromMap(
              (map['deny'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      envId: map['envId'] as String,
      expireTime:
          map['expireTime'] == null ? null : map['expireTime'] as String,
      flag: map['flag'] == null
          ? null
          : SecurityActionFlag.fromMap(
              (map['flag'] as Map).cast<String, dynamic>()),
      orgId: map['orgId'] as String,
      securityActionId: map['securityActionId'] as String,
      state: map['state'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
    );
  }
}
