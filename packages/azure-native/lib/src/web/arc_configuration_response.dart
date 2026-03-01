// ignore_for_file: unused_element, unnecessary_cast

import 'front_end_configuration_response.dart';

class ArcConfigurationResponse {
  final String? artifactStorageAccessMode;
  final String? artifactStorageClassName;
  final String? artifactStorageMountPath;
  final String? artifactStorageNodeName;
  final String? artifactsStorageType;
  final FrontEndConfigurationResponse? frontEndServiceConfiguration;

  /// Creates a new [ArcConfigurationResponse].
  /// [artifactStorageAccessMode] Optional.
  /// [artifactStorageClassName] Optional.
  /// [artifactStorageMountPath] Optional.
  /// [artifactStorageNodeName] Optional.
  /// [artifactsStorageType] Optional.
  /// [frontEndServiceConfiguration] Optional.
  ArcConfigurationResponse({
    this.artifactStorageAccessMode,
    this.artifactStorageClassName,
    this.artifactStorageMountPath,
    this.artifactStorageNodeName,
    this.artifactsStorageType,
    this.frontEndServiceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorageAccessMode': ?artifactStorageAccessMode,
      'artifactStorageClassName': ?artifactStorageClassName,
      'artifactStorageMountPath': ?artifactStorageMountPath,
      'artifactStorageNodeName': ?artifactStorageNodeName,
      'artifactsStorageType': ?artifactsStorageType,
      'frontEndServiceConfiguration': ?frontEndServiceConfiguration == null ? null : frontEndServiceConfiguration!.toMap(),
    };
  }

  factory ArcConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ArcConfigurationResponse(
      artifactStorageAccessMode: map['artifactStorageAccessMode'] == null ? null : map['artifactStorageAccessMode'] as String,
      artifactStorageClassName: map['artifactStorageClassName'] == null ? null : map['artifactStorageClassName'] as String,
      artifactStorageMountPath: map['artifactStorageMountPath'] == null ? null : map['artifactStorageMountPath'] as String,
      artifactStorageNodeName: map['artifactStorageNodeName'] == null ? null : map['artifactStorageNodeName'] as String,
      artifactsStorageType: map['artifactsStorageType'] == null ? null : map['artifactsStorageType'] as String,
      frontEndServiceConfiguration: map['frontEndServiceConfiguration'] == null ? null : FrontEndConfigurationResponse.fromMap((map['frontEndServiceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

