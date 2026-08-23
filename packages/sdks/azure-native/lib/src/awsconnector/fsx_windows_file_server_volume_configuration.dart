// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fsx_authorization_config.dart';

/// Definition of FSxWindowsFileServerVolumeConfiguration
class FSxWindowsFileServerVolumeConfiguration {
  /// The authorization configuration details for the Amazon FSx for Windows File Server file system.
  final pulumi.Input<FSxAuthorizationConfig>? authorizationConfig;
  /// The Amazon FSx for Windows File Server file system ID to use.
  final pulumi.Input<String>? fileSystemId;
  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final pulumi.Input<String>? rootDirectory;

  /// Creates a new [FSxWindowsFileServerVolumeConfiguration].
  /// [authorizationConfig] The authorization configuration details for the Amazon FSx for Windows File Server file system.
  /// [fileSystemId] The Amazon FSx for Windows File Server file system ID to use.
  /// [rootDirectory] The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  const FSxWindowsFileServerVolumeConfiguration({
    this.authorizationConfig,
    this.fileSystemId,
    this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfig': ?pulumi.Input.mapOptionalInputValue<FSxAuthorizationConfig, Map<String, dynamic>>(authorizationConfig, (value) => value.toMap()),
      'fileSystemId': ?fileSystemId,
      'rootDirectory': ?rootDirectory,
    };
  }

  factory FSxWindowsFileServerVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return FSxWindowsFileServerVolumeConfiguration(
      authorizationConfig: (() { final guardedValue = map['authorizationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FSxAuthorizationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDirectory: (() { final guardedValue = map['rootDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
