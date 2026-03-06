// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides information about the drive's status
class DriveStatusResponse {
  /// The BitLocker key used to encrypt the drive.
  final pulumi.Input<String>? bitLockerKey;
  /// Bytes successfully transferred for the drive.
  final pulumi.Input<double>? bytesSucceeded;
  /// Detailed status about the data transfer process. This field is not returned in the response until the drive is in the Transferring state.
  final pulumi.Input<String>? copyStatus;
  /// The drive header hash value.
  final pulumi.Input<String>? driveHeaderHash;
  /// The drive's hardware serial number, without spaces.
  final pulumi.Input<String>? driveId;
  /// A URI that points to the blob containing the error log for the data transfer operation.
  final pulumi.Input<String>? errorLogUri;
  /// The relative path of the manifest file on the drive.
  final pulumi.Input<String>? manifestFile;
  /// The Base16-encoded MD5 hash of the manifest file on the drive.
  final pulumi.Input<String>? manifestHash;
  /// A URI that points to the blob containing the drive manifest file.
  final pulumi.Input<String>? manifestUri;
  /// Percentage completed for the drive.
  final pulumi.Input<double>? percentComplete;
  /// The drive's current state.
  final pulumi.Input<String>? state;
  /// A URI that points to the blob containing the verbose log for the data transfer operation.
  final pulumi.Input<String>? verboseLogUri;

  /// Creates a new [DriveStatusResponse].
  /// [bitLockerKey] The BitLocker key used to encrypt the drive.
  /// [bytesSucceeded] Bytes successfully transferred for the drive.
  /// [copyStatus] Detailed status about the data transfer process. This field is not returned in the response until the drive is in the Transferring state.
  /// [driveHeaderHash] The drive header hash value.
  /// [driveId] The drive's hardware serial number, without spaces.
  /// [errorLogUri] A URI that points to the blob containing the error log for the data transfer operation.
  /// [manifestFile] The relative path of the manifest file on the drive.
  /// [manifestHash] The Base16-encoded MD5 hash of the manifest file on the drive.
  /// [manifestUri] A URI that points to the blob containing the drive manifest file.
  /// [percentComplete] Percentage completed for the drive.
  /// [state] The drive's current state.
  /// [verboseLogUri] A URI that points to the blob containing the verbose log for the data transfer operation.
  const DriveStatusResponse({
    this.bitLockerKey,
    this.bytesSucceeded,
    this.copyStatus,
    this.driveHeaderHash,
    this.driveId,
    this.errorLogUri,
    this.manifestFile,
    this.manifestHash,
    this.manifestUri,
    this.percentComplete,
    this.state,
    this.verboseLogUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitLockerKey': ?bitLockerKey,
      'bytesSucceeded': ?bytesSucceeded,
      'copyStatus': ?copyStatus,
      'driveHeaderHash': ?driveHeaderHash,
      'driveId': ?driveId,
      'errorLogUri': ?errorLogUri,
      'manifestFile': ?manifestFile,
      'manifestHash': ?manifestHash,
      'manifestUri': ?manifestUri,
      'percentComplete': ?percentComplete,
      'state': ?state,
      'verboseLogUri': ?verboseLogUri,
    };
  }

  factory DriveStatusResponse.fromMap(Map<String, dynamic> map) {
    return DriveStatusResponse(
      bitLockerKey: (() { final guardedValue = map['bitLockerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bytesSucceeded: (() { final guardedValue = map['bytesSucceeded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      copyStatus: (() { final guardedValue = map['copyStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driveHeaderHash: (() { final guardedValue = map['driveHeaderHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driveId: (() { final guardedValue = map['driveId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorLogUri: (() { final guardedValue = map['errorLogUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestFile: (() { final guardedValue = map['manifestFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestHash: (() { final guardedValue = map['manifestHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestUri: (() { final guardedValue = map['manifestUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentComplete: (() { final guardedValue = map['percentComplete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verboseLogUri: (() { final guardedValue = map['verboseLogUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

