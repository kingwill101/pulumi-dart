// ignore_for_file: unused_element, unnecessary_cast

import 'database_encryption_state_container_v1beta1.dart';

/// Configuration of etcd encryption.
class DatabaseEncryptionContainerV1beta1 {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  final String? keyName;

  /// The desired state of etcd encryption.
  final DatabaseEncryptionStateContainerV1beta1? state;

  DatabaseEncryptionContainerV1beta1({
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

  factory DatabaseEncryptionContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryptionContainerV1beta1(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      state: map['state'] == null
          ? null
          : DatabaseEncryptionStateContainerV1beta1.fromValue(
              map['state'] as String),
    );
  }
}
