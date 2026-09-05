// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoleInlinePolicy {
  /// Name of the role policy.
  final pulumi.Input<String?>? name;
  /// Policy document as a JSON formatted string.
  final pulumi.Input<String?>? policy;

  /// Creates a new [RoleInlinePolicy].
  /// [name] Name of the role policy.
  /// [policy] Policy document as a JSON formatted string.
  const RoleInlinePolicy({
    this.name,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policy': ?policy,
    };
  }

  factory RoleInlinePolicy.fromMap(Map<String, dynamic> map) {
    return RoleInlinePolicy(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
