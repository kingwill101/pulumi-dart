// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Export disk details
class ExportDiskDetailsResponse {
  /// Path to backed up manifest, only returned if enableManifestBackup is true.
  final pulumi.Input<String> backupManifestCloudPath;
  /// The relative path of the manifest file on the disk.
  final pulumi.Input<String> manifestFile;
  /// The Base16-encoded MD5 hash of the manifest file on the disk.
  final pulumi.Input<String> manifestHash;

  /// Creates a new [ExportDiskDetailsResponse].
  /// [backupManifestCloudPath] Path to backed up manifest, only returned if enableManifestBackup is true.
  /// [manifestFile] The relative path of the manifest file on the disk.
  /// [manifestHash] The Base16-encoded MD5 hash of the manifest file on the disk.
  ExportDiskDetailsResponse({
    required this.backupManifestCloudPath,
    required this.manifestFile,
    required this.manifestHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManifestCloudPath': backupManifestCloudPath,
      'manifestFile': manifestFile,
      'manifestHash': manifestHash,
    };
  }

  factory ExportDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ExportDiskDetailsResponse(
      backupManifestCloudPath: (map['backupManifestCloudPath'] as String).input(),
      manifestFile: (map['manifestFile'] as String).input(),
      manifestHash: (map['manifestHash'] as String).input(),
    );
  }
}

