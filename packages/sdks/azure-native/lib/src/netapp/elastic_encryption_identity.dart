// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity used to authenticate with key vault.
class ElasticEncryptionIdentity {
  /// The ARM resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [ElasticEncryptionIdentity].
  /// [userAssignedIdentity] The ARM resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  const ElasticEncryptionIdentity({
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory ElasticEncryptionIdentity.fromMap(Map<String, dynamic> map) {
    return ElasticEncryptionIdentity(
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
