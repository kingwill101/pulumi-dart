// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'restore_point_encryption_response.dart';

/// Disk Restore Point details.
class DiskRestorePointAttributesResponse {
  /// Encryption at rest settings for disk restore point. It is an optional property that can be specified in the input while creating a restore point.
  final pulumi.Input<RestorePointEncryptionResponse?>? encryption;
  /// Resource Id
  final pulumi.Input<String> id;
  /// Resource Id of the source disk restore point.
  final pulumi.Input<ApiEntityReferenceResponse?>? sourceDiskRestorePoint;

  /// Creates a new [DiskRestorePointAttributesResponse].
  /// [encryption] Encryption at rest settings for disk restore point. It is an optional property that can be specified in the input while creating a restore point.
  /// [id] Resource Id
  /// [sourceDiskRestorePoint] Resource Id of the source disk restore point.
  const DiskRestorePointAttributesResponse({
    this.encryption,
    required this.id,
    this.sourceDiskRestorePoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<RestorePointEncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'id': id,
      'sourceDiskRestorePoint': ?pulumi.Input.mapOptionalInputValue<ApiEntityReferenceResponse, Map<String, dynamic>>(sourceDiskRestorePoint, (value) => value.toMap()),
    };
  }

  factory DiskRestorePointAttributesResponse.fromMap(Map<String, dynamic> map) {
    return DiskRestorePointAttributesResponse(
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestorePointEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      sourceDiskRestorePoint: (() { final guardedValue = map['sourceDiskRestorePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEntityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
