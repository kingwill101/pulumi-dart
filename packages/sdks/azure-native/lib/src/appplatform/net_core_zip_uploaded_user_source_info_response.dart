// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uploaded Jar binary for a deployment
class NetCoreZipUploadedUserSourceInfoResponse {
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

  /// Creates a new [NetCoreZipUploadedUserSourceInfoResponse].
  /// [netCoreMainEntryPath] The path to the .NET executable relative to zip root
  /// [relativePath] Relative path of the storage which stores the source
  /// [runtimeVersion] Runtime version of the .Net file
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  const NetCoreZipUploadedUserSourceInfoResponse({
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

  factory NetCoreZipUploadedUserSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return NetCoreZipUploadedUserSourceInfoResponse(
      netCoreMainEntryPath: (() { final guardedValue = map['netCoreMainEntryPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

