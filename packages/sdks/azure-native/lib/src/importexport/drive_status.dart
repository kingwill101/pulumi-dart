// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides information about the drive's status
class DriveStatus {
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

  /// Creates a new [DriveStatus].
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
  DriveStatus({
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

  factory DriveStatus.fromMap(Map<String, dynamic> map) {
    return DriveStatus(
      bitLockerKey: map['bitLockerKey'] == null ? null : (map['bitLockerKey'] as String).input(),
      bytesSucceeded: map['bytesSucceeded'] == null ? null : (map['bytesSucceeded'] as double).input(),
      copyStatus: map['copyStatus'] == null ? null : (map['copyStatus'] as String).input(),
      driveHeaderHash: map['driveHeaderHash'] == null ? null : (map['driveHeaderHash'] as String).input(),
      driveId: map['driveId'] == null ? null : (map['driveId'] as String).input(),
      errorLogUri: map['errorLogUri'] == null ? null : (map['errorLogUri'] as String).input(),
      manifestFile: map['manifestFile'] == null ? null : (map['manifestFile'] as String).input(),
      manifestHash: map['manifestHash'] == null ? null : (map['manifestHash'] as String).input(),
      manifestUri: map['manifestUri'] == null ? null : (map['manifestUri'] as String).input(),
      percentComplete: map['percentComplete'] == null ? null : (map['percentComplete'] as double).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      verboseLogUri: map['verboseLogUri'] == null ? null : (map['verboseLogUri'] as String).input(),
    );
  }
}

