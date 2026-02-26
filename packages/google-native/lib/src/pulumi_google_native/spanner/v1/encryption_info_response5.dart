// ignore_for_file: unused_element, unnecessary_cast

import 'status_response26.dart';

/// Encryption information for a Cloud Spanner database or backup.
class EncryptionInfoResponse5 {
  /// If present, the status of a recent encrypt/decrypt call on underlying data for this database or backup. Regardless of status, data is always encrypted at rest.
  final StatusResponse26 encryptionStatus;

  /// The type of encryption.
  final String encryptionType;

  /// A Cloud KMS key version that is being used to protect the database or backup.
  final String kmsKeyVersion;

  EncryptionInfoResponse5({
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

  factory EncryptionInfoResponse5.fromMap(Map<String, dynamic> map) {
    return EncryptionInfoResponse5(
      encryptionStatus: StatusResponse26.fromMap(
          (map['encryptionStatus'] as Map).cast<String, dynamic>()),
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersion: map['kmsKeyVersion'] as String,
    );
  }
}
