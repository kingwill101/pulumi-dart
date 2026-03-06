// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity properties of the factory resource.
class FactoryIdentity {
  /// The identity type.
  final pulumi.Input<String> type;
  /// List of user assigned identities for the factory.
  final pulumi.Input<Map<String, dynamic>>? userAssignedIdentities;

  /// Creates a new [FactoryIdentity].
  /// [type] The identity type.
  /// [userAssignedIdentities] List of user assigned identities for the factory.
  const FactoryIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory FactoryIdentity.fromMap(Map<String, dynamic> map) {
    return FactoryIdentity(
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

