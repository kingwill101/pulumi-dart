// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fsx_authorization_config_response.dart';

/// Definition of FSxWindowsFileServerVolumeConfiguration
class FSxWindowsFileServerVolumeConfigurationResponse {
  /// The authorization configuration details for the Amazon FSx for Windows File Server file system.
  final pulumi.Input<FSxAuthorizationConfigResponse>? authorizationConfig;
  /// The Amazon FSx for Windows File Server file system ID to use.
  final pulumi.Input<String>? fileSystemId;
  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final pulumi.Input<String>? rootDirectory;

  /// Creates a new [FSxWindowsFileServerVolumeConfigurationResponse].
  /// [authorizationConfig] The authorization configuration details for the Amazon FSx for Windows File Server file system.
  /// [fileSystemId] The Amazon FSx for Windows File Server file system ID to use.
  /// [rootDirectory] The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  FSxWindowsFileServerVolumeConfigurationResponse({
    this.authorizationConfig,
    this.fileSystemId,
    this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfig': ?pulumi.Input.mapOptionalInputValue<FSxAuthorizationConfigResponse, Map<String, dynamic>>(authorizationConfig, (value) => value.toMap()),
      'fileSystemId': ?fileSystemId,
      'rootDirectory': ?rootDirectory,
    };
  }

  factory FSxWindowsFileServerVolumeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FSxWindowsFileServerVolumeConfigurationResponse(
      authorizationConfig: map['authorizationConfig'] == null ? null : (FSxAuthorizationConfigResponse.fromMap((map['authorizationConfig'] as Map).cast<String, dynamic>())).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      rootDirectory: map['rootDirectory'] == null ? null : (map['rootDirectory'] as String).input(),
    );
  }
}

