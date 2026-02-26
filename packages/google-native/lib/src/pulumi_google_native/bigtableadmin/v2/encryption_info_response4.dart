// ignore_for_file: unused_element, unnecessary_cast

import 'status_response3.dart';

/// Encryption information for a given resource. If this resource is protected with customer managed encryption, the in-use Cloud Key Management Service (Cloud KMS) key version is specified along with its status.
class EncryptionInfoResponse4 {
  /// The status of encrypt/decrypt calls on underlying data for this resource. Regardless of status, the existing data is always encrypted at rest.
  final StatusResponse3 encryptionStatus;

  /// The type of encryption used to protect this resource.
  final String encryptionType;

  /// The version of the Cloud KMS key specified in the parent cluster that is in use for the data underlying this table.
  final String kmsKeyVersion;

  EncryptionInfoResponse4({
    required this.encryptionStatus,
    required this.encryptionType,
    required this.kmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionStatus'] = encryptionStatus.toMap();
    map['encryptionType'] = encryptionType;
    map['kmsKeyVersion'] = kmsKeyVersion;
    return map;
  }

  factory EncryptionInfoResponse4.fromMap(Map<String, dynamic> map) {
    return EncryptionInfoResponse4(
      encryptionStatus: StatusResponse3.fromMap(
          (map['encryptionStatus'] as Map).cast<String, dynamic>()),
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersion: map['kmsKeyVersion'] as String,
    );
  }
}
