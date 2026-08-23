// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import disk details
class ImportDiskDetailsResponse {
  /// Path to backed up manifest, only returned if enableManifestBackup is true.
  final pulumi.Input<String> backupManifestCloudPath;
  /// BitLocker key used to encrypt the disk.
  final pulumi.Input<String> bitLockerKey;
  /// The relative path of the manifest file on the disk.
  final pulumi.Input<String> manifestFile;
  /// The Base16-encoded MD5 hash of the manifest file on the disk.
  final pulumi.Input<String> manifestHash;

  /// Creates a new [ImportDiskDetailsResponse].
  /// [backupManifestCloudPath] Path to backed up manifest, only returned if enableManifestBackup is true.
  /// [bitLockerKey] BitLocker key used to encrypt the disk.
  /// [manifestFile] The relative path of the manifest file on the disk.
  /// [manifestHash] The Base16-encoded MD5 hash of the manifest file on the disk.
  const ImportDiskDetailsResponse({
    required this.backupManifestCloudPath,
    required this.bitLockerKey,
    required this.manifestFile,
    required this.manifestHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManifestCloudPath': backupManifestCloudPath,
      'bitLockerKey': bitLockerKey,
      'manifestFile': manifestFile,
      'manifestHash': manifestHash,
    };
  }

  factory ImportDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ImportDiskDetailsResponse(
      backupManifestCloudPath: pulumi.Input.fromValue(map['backupManifestCloudPath'] as String),
      bitLockerKey: pulumi.Input.fromValue(map['bitLockerKey'] as String),
      manifestFile: pulumi.Input.fromValue(map['manifestFile'] as String),
      manifestHash: pulumi.Input.fromValue(map['manifestHash'] as String),
    );
  }
}
