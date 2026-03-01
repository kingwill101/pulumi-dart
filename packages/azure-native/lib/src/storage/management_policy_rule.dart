// ignore_for_file: unused_element, unnecessary_cast

import 'management_policy_definition.dart';

/// An object that wraps the Lifecycle rule. Each rule is uniquely defined by name.
class ManagementPolicyRule {
  /// An object that defines the Lifecycle rule.
  final ManagementPolicyDefinition definition;
  /// Rule is enabled if set to true.
  final bool? enabled;
  /// A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy.
  final String name;
  /// The valid value is Lifecycle
  final String type;

  /// Creates a new [ManagementPolicyRule].
  /// [definition] An object that defines the Lifecycle rule.
  /// [enabled] Rule is enabled if set to true.
  /// [name] A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy.
  /// [type] The valid value is Lifecycle
  ManagementPolicyRule({
    required this.definition,
    this.enabled,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition.toMap(),
      'enabled': ?enabled,
      'name': name,
      'type': type,
    };
  }

  factory ManagementPolicyRule.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRule(
      definition: ManagementPolicyDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

