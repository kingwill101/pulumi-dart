// ignore_for_file: unused_element, unnecessary_cast

import 'aksidentity_type.dart';

/// Identity of the Extension resource in an AKS cluster
class ExtensionAksAssignedIdentity {
  /// The identity type.
  final AKSIdentityType? type;

  /// Creates a new [ExtensionAksAssignedIdentity].
  /// [type] The identity type.
  ExtensionAksAssignedIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory ExtensionAksAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return ExtensionAksAssignedIdentity(
      type: map['type'] == null ? null : AKSIdentityType.fromValue(map['type'] as String),
    );
  }
}

