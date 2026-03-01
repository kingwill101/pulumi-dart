// ignore_for_file: unused_element, unnecessary_cast

import 'fsx_authorization_config_response.dart';

/// Definition of FSxWindowsFileServerVolumeConfiguration
class FSxWindowsFileServerVolumeConfigurationResponse {
  /// The authorization configuration details for the Amazon FSx for Windows File Server file system.
  final FSxAuthorizationConfigResponse? authorizationConfig;
  /// The Amazon FSx for Windows File Server file system ID to use.
  final String? fileSystemId;
  /// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
  final String? rootDirectory;

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
      'authorizationConfig': ?authorizationConfig == null ? null : authorizationConfig!.toMap(),
      'fileSystemId': ?fileSystemId,
      'rootDirectory': ?rootDirectory,
    };
  }

  factory FSxWindowsFileServerVolumeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FSxWindowsFileServerVolumeConfigurationResponse(
      authorizationConfig: map['authorizationConfig'] == null ? null : FSxAuthorizationConfigResponse.fromMap((map['authorizationConfig'] as Map).cast<String, dynamic>()),
      fileSystemId: map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      rootDirectory: map['rootDirectory'] == null ? null : map['rootDirectory'] as String,
    );
  }
}

