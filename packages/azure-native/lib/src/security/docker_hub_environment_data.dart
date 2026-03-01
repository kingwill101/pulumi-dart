// ignore_for_file: unused_element, unnecessary_cast

import 'access_token_authentication.dart';

/// The Docker Hub connector environment data
class DockerHubEnvironmentData {
  /// The Docker Hub organization authentication details
  final AccessTokenAuthentication? authentication;
  /// The type of the environment data.
  /// Expected value is 'DockerHubOrganization'.
  final String environmentType;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final double? scanInterval;

  /// Creates a new [DockerHubEnvironmentData].
  /// [authentication] The Docker Hub organization authentication details
  /// [environmentType] The type of the environment data.
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  DockerHubEnvironmentData({
    this.authentication,
    required this.environmentType,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'environmentType': environmentType,
      'scanInterval': ?scanInterval,
    };
  }

  factory DockerHubEnvironmentData.fromMap(Map<String, dynamic> map) {
    return DockerHubEnvironmentData(
      authentication: map['authentication'] == null ? null : AccessTokenAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      environmentType: map['environmentType'] as String,
      scanInterval: map['scanInterval'] == null ? null : map['scanInterval'] as double,
    );
  }
}

