// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference.dart';
import 'restore_point_encryption.dart';

/// Disk Restore Point details.
class DiskRestorePointAttributes {
  /// Encryption at rest settings for disk restore point. It is an optional property that can be specified in the input while creating a restore point.
  final pulumi.Input<RestorePointEncryption>? encryption;
  /// Resource Id of the source disk restore point.
  final pulumi.Input<ApiEntityReference>? sourceDiskRestorePoint;

  /// Creates a new [DiskRestorePointAttributes].
  /// [encryption] Encryption at rest settings for disk restore point. It is an optional property that can be specified in the input while creating a restore point.
  /// [sourceDiskRestorePoint] Resource Id of the source disk restore point.
  DiskRestorePointAttributes({
    this.encryption,
    this.sourceDiskRestorePoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<RestorePointEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'sourceDiskRestorePoint': ?pulumi.Input.mapOptionalInputValue<ApiEntityReference, Map<String, dynamic>>(sourceDiskRestorePoint, (value) => value.toMap()),
    };
  }

  factory DiskRestorePointAttributes.fromMap(Map<String, dynamic> map) {
    return DiskRestorePointAttributes(
      encryption: map['encryption'] == null ? null : (RestorePointEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      sourceDiskRestorePoint: map['sourceDiskRestorePoint'] == null ? null : (ApiEntityReference.fromMap((map['sourceDiskRestorePoint']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

