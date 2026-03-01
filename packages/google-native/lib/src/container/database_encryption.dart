// ignore_for_file: unused_element, unnecessary_cast

import 'database_encryption_state.dart';

/// Configuration of etcd encryption.
class DatabaseEncryption {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  final String? keyName;

  /// The desired state of etcd encryption.
  final DatabaseEncryptionState? state;

  /// Creates a new [DatabaseEncryption].
  /// [keyName] Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  /// [state] The desired state of etcd encryption.
  DatabaseEncryption({this.keyName, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'state': ?state == null ? null : state!.value,
    };
  }

  factory DatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryption(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      state: map['state'] == null
          ? null
          : DatabaseEncryptionState.fromValue(map['state'] as String),
    );
  }
}
