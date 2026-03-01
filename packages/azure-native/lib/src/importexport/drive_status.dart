// ignore_for_file: unused_element, unnecessary_cast


/// Provides information about the drive's status
class DriveStatus {
  /// The BitLocker key used to encrypt the drive.
  final String? bitLockerKey;
  /// Bytes successfully transferred for the drive.
  final double? bytesSucceeded;
  /// Detailed status about the data transfer process. This field is not returned in the response until the drive is in the Transferring state.
  final String? copyStatus;
  /// The drive header hash value.
  final String? driveHeaderHash;
  /// The drive's hardware serial number, without spaces.
  final String? driveId;
  /// A URI that points to the blob containing the error log for the data transfer operation.
  final String? errorLogUri;
  /// The relative path of the manifest file on the drive.
  final String? manifestFile;
  /// The Base16-encoded MD5 hash of the manifest file on the drive.
  final String? manifestHash;
  /// A URI that points to the blob containing the drive manifest file.
  final String? manifestUri;
  /// Percentage completed for the drive.
  final double? percentComplete;
  /// The drive's current state.
  final String? state;
  /// A URI that points to the blob containing the verbose log for the data transfer operation.
  final String? verboseLogUri;

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
      bitLockerKey: map['bitLockerKey'] == null ? null : map['bitLockerKey'] as String,
      bytesSucceeded: map['bytesSucceeded'] == null ? null : map['bytesSucceeded'] as double,
      copyStatus: map['copyStatus'] == null ? null : map['copyStatus'] as String,
      driveHeaderHash: map['driveHeaderHash'] == null ? null : map['driveHeaderHash'] as String,
      driveId: map['driveId'] == null ? null : map['driveId'] as String,
      errorLogUri: map['errorLogUri'] == null ? null : map['errorLogUri'] as String,
      manifestFile: map['manifestFile'] == null ? null : map['manifestFile'] as String,
      manifestHash: map['manifestHash'] == null ? null : map['manifestHash'] as String,
      manifestUri: map['manifestUri'] == null ? null : map['manifestUri'] as String,
      percentComplete: map['percentComplete'] == null ? null : map['percentComplete'] as double,
      state: map['state'] == null ? null : map['state'] as String,
      verboseLogUri: map['verboseLogUri'] == null ? null : map['verboseLogUri'] as String,
    );
  }
}

