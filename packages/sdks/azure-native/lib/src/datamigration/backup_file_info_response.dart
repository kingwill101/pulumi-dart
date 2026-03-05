// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information of the backup file
class BackupFileInfoResponse {
  /// Sequence number of the backup file in the backup set
  final pulumi.Input<int>? familySequenceNumber;
  /// Location of the backup file in shared folder
  final pulumi.Input<String>? fileLocation;
  /// Status of the backup file during migration
  final pulumi.Input<String>? status;

  /// Creates a new [BackupFileInfoResponse].
  /// [familySequenceNumber] Sequence number of the backup file in the backup set
  /// [fileLocation] Location of the backup file in shared folder
  /// [status] Status of the backup file during migration
  BackupFileInfoResponse({
    this.familySequenceNumber,
    this.fileLocation,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'familySequenceNumber': ?familySequenceNumber,
      'fileLocation': ?fileLocation,
      'status': ?status,
    };
  }

  factory BackupFileInfoResponse.fromMap(Map<String, dynamic> map) {
    return BackupFileInfoResponse(
      familySequenceNumber: (() { final guardedValue = map['familySequenceNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fileLocation: (() { final guardedValue = map['fileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

