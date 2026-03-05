// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'coo_domain_precise_access_rule_condition.dart';

/// Input properties used for looking up and filtering CooDomainPreciseAccessRule resources.
class CooDomainPreciseAccessRuleState {
  /// Action to take on match. Valid values:
  final pulumi.Input<String>? action;
  /// List of matching conditions. See `condition` below.
  final pulumi.Input<List<CooDomainPreciseAccessRuleCondition>>? conditions;
  /// Domain name of the website service.
  /// &gt; **NOTE:**  The domain name must already have a website service forwarding rule configured. You can call [DescribeDomains](https://help.aliyun.com/document_detail/91724.html) to query all domain names.
  final pulumi.Input<String>? domain;
  /// Rule validity period, in seconds. This parameter takes effect only when the rule's matching action is set to block (`action` is `block`), blocking access requests during the validity period. If this parameter is not specified, the rule remains effective permanently.
  final pulumi.Input<int>? expires;
  /// Rule name.
  final pulumi.Input<String>? name;

  /// Creates a new [CooDomainPreciseAccessRuleState].
  /// [action] Action to take on match. Valid values:
  /// [conditions] List of matching conditions. See `condition` below.
  /// [domain] Domain name of the website service.
  /// [expires] Rule validity period, in seconds. This parameter takes effect only when the rule's matching action is set to block (`action` is `block`), blocking access requests during the validity period. If this parameter is not specified, the rule remains effective permanently.
  /// [name] Rule name.
  CooDomainPreciseAccessRuleState({
    this.action,
    this.conditions,
    this.domain,
    this.expires,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<CooDomainPreciseAccessRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<CooDomainPreciseAccessRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domain': ?domain,
      'expires': ?expires,
      'name': ?name,
    };
  }

  factory CooDomainPreciseAccessRuleState.fromMap(Map<String, dynamic> map) {
    return CooDomainPreciseAccessRuleState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CooDomainPreciseAccessRuleCondition>(guardedValue, (value) => CooDomainPreciseAccessRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

