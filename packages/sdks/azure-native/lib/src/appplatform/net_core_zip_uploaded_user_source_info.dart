// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploaded Jar binary for a deployment
class NetCoreZipUploadedUserSourceInfo {
  /// The path to the .NET executable relative to zip root
  final pulumi.Input<String>? netCoreMainEntryPath;
  /// Relative path of the storage which stores the source
  final pulumi.Input<String>? relativePath;
  /// Runtime version of the .Net file
  final pulumi.Input<String>? runtimeVersion;
  /// Type of the source uploaded
  /// Expected value is 'NetCoreZip'.
  final pulumi.Input<String> type;
  /// Version of the source
  final pulumi.Input<String>? version;

  /// Creates a new [NetCoreZipUploadedUserSourceInfo].
  /// [netCoreMainEntryPath] The path to the .NET executable relative to zip root
  /// [relativePath] Relative path of the storage which stores the source
  /// [runtimeVersion] Runtime version of the .Net file
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  NetCoreZipUploadedUserSourceInfo({
    this.netCoreMainEntryPath,
    this.relativePath,
    this.runtimeVersion,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'netCoreMainEntryPath': ?netCoreMainEntryPath,
      'relativePath': ?relativePath,
      'runtimeVersion': ?runtimeVersion,
      'type': type,
      'version': ?version,
    };
  }

  factory NetCoreZipUploadedUserSourceInfo.fromMap(Map<String, dynamic> map) {
    return NetCoreZipUploadedUserSourceInfo(
      netCoreMainEntryPath: map['netCoreMainEntryPath'] == null ? null : (map['netCoreMainEntryPath']! as String).input(),
      relativePath: map['relativePath'] == null ? null : (map['relativePath']! as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

