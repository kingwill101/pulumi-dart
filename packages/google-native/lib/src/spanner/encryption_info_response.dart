// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';

/// Encryption information for a Cloud Spanner database or backup.
class EncryptionInfoResponse {
  /// If present, the status of a recent encrypt/decrypt call on underlying data for this database or backup. Regardless of status, data is always encrypted at rest.
  final StatusResponse encryptionStatus;

  /// The type of encryption.
  final String encryptionType;

  /// A Cloud KMS key version that is being used to protect the database or backup.
  final String kmsKeyVersion;

  /// Creates a new [EncryptionInfoResponse].
  /// [encryptionStatus] If present, the status of a recent encrypt/decrypt call on underlying data for this database or backup. Regardless of status, data is always encrypted at rest.
  /// [encryptionType] The type of encryption.
  /// [kmsKeyVersion] A Cloud KMS key version that is being used to protect the database or backup.
  EncryptionInfoResponse({
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

  factory EncryptionInfoResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionInfoResponse(
      encryptionStatus: StatusResponse.fromMap(
          (map['encryptionStatus'] as Map).cast<String, dynamic>()),
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersion: map['kmsKeyVersion'] as String,
    );
  }
}
