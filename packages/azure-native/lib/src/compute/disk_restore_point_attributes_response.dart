// ignore_for_file: unused_element, unnecessary_cast

import 'api_entity_reference_response.dart';
import 'restore_point_encryption_response.dart';

/// Disk Restore Point details.
class DiskRestorePointAttributesResponse {
  /// Encryption at rest settings for disk restore point. It is an optional property that can be specified in the input while creating a restore point.
  final RestorePointEncryptionResponse? encryption;
  /// Resource Id
  final String id;
  /// Resource Id of the source disk restore point.
  final ApiEntityReferenceResponse? sourceDiskRestorePoint;

  /// Creates a new [DiskRestorePointAttributesResponse].
  /// [encryption] Encryption at rest settings for disk restore point. It is an optional property that can be specified in the input while creating a restore point.
  /// [id] Resource Id
  /// [sourceDiskRestorePoint] Resource Id of the source disk restore point.
  DiskRestorePointAttributesResponse({
    this.encryption,
    required this.id,
    this.sourceDiskRestorePoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'id': id,
      'sourceDiskRestorePoint': ?sourceDiskRestorePoint == null ? null : sourceDiskRestorePoint!.toMap(),
    };
  }

  factory DiskRestorePointAttributesResponse.fromMap(Map<String, dynamic> map) {
    return DiskRestorePointAttributesResponse(
      encryption: map['encryption'] == null ? null : RestorePointEncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      sourceDiskRestorePoint: map['sourceDiskRestorePoint'] == null ? null : ApiEntityReferenceResponse.fromMap((map['sourceDiskRestorePoint'] as Map).cast<String, dynamic>()),
    );
  }
}

