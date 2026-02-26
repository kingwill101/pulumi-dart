// ignore_for_file: unused_element, unnecessary_cast

import 'database_encryption_state2.dart';

/// Configuration of etcd encryption.
class DatabaseEncryption2 {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  final String? keyName;

  /// The desired state of etcd encryption.
  final DatabaseEncryptionState2? state;

  DatabaseEncryption2({
    this.keyName,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    return map;
  }

  factory DatabaseEncryption2.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryption2(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      state: map['state'] == null
          ? null
          : DatabaseEncryptionState2.fromValue(map['state'] as String),
    );
  }
}
