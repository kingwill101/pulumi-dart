// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantPrincipalGroup {
  /// Identifier of the group principal.
  final pulumi.Input<String> groupIdentifier;

  /// Creates a new [PolicyGrantPrincipalGroup].
  /// [groupIdentifier] Identifier of the group principal.
  const PolicyGrantPrincipalGroup({
    required this.groupIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIdentifier': groupIdentifier,
    };
  }

  factory PolicyGrantPrincipalGroup.fromMap(Map<String, dynamic> map) {
    return PolicyGrantPrincipalGroup(
      groupIdentifier: pulumi.Input.fromValue(map['groupIdentifier'] as String),
    );
  }
}
