// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// Encryption key properties for the pool.
class Encryption {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The name of the key vault key.
  final pulumi.Input<String> keyName;
  /// The URI of the key vault.
  final pulumi.Input<String> keyVaultUri;

  /// Creates a new [Encryption].
  /// [identity] The managed service identities assigned to this resource.
  /// [keyName] The name of the key vault key.
  /// [keyVaultUri] The URI of the key vault.
  Encryption({
    this.identity,
    required this.keyName,
    required this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keyName: (map['keyName'] as String).input(),
      keyVaultUri: (map['keyVaultUri'] as String).input(),
    );
  }
}

