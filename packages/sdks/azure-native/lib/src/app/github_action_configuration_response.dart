// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_credentials_response.dart';
import 'environment_variable_response.dart';
import 'registry_info_response.dart';

/// Configuration properties that define the mutable settings of a Container App SourceControl
class GithubActionConfigurationResponse {
  /// AzureCredentials configurations.
  final AzureCredentialsResponse? azureCredentials;
  /// List of environment variables to be passed to the build.
  final List<EnvironmentVariableResponse>? buildEnvironmentVariables;
  /// Context path
  final String? contextPath;
  /// Dockerfile path
  final String? dockerfilePath;
  /// Image name
  final String? image;
  /// Operation system
  final String? os;
  /// Code or Image
  final String? publishType;
  /// Registry configurations.
  final RegistryInfoResponse? registryInfo;
  /// Runtime stack
  final String? runtimeStack;
  /// Runtime version
  final String? runtimeVersion;

  /// Creates a new [GithubActionConfigurationResponse].
  /// [azureCredentials] AzureCredentials configurations.
  /// [buildEnvironmentVariables] List of environment variables to be passed to the build.
  /// [contextPath] Context path
  /// [dockerfilePath] Dockerfile path
  /// [image] Image name
  /// [os] Operation system
  /// [publishType] Code or Image
  /// [registryInfo] Registry configurations.
  /// [runtimeStack] Runtime stack
  /// [runtimeVersion] Runtime version
  GithubActionConfigurationResponse({
    this.azureCredentials,
    this.buildEnvironmentVariables,
    this.contextPath,
    this.dockerfilePath,
    this.image,
    this.os,
    this.publishType,
    this.registryInfo,
    this.runtimeStack,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureCredentials': ?azureCredentials == null ? null : azureCredentials!.toMap(),
      'buildEnvironmentVariables': ?buildEnvironmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(buildEnvironmentVariables!, (value) => value.toMap()),
      'contextPath': ?contextPath,
      'dockerfilePath': ?dockerfilePath,
      'image': ?image,
      'os': ?os,
      'publishType': ?publishType,
      'registryInfo': ?registryInfo == null ? null : registryInfo!.toMap(),
      'runtimeStack': ?runtimeStack,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory GithubActionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GithubActionConfigurationResponse(
      azureCredentials: map['azureCredentials'] == null ? null : AzureCredentialsResponse.fromMap((map['azureCredentials'] as Map).cast<String, dynamic>()),
      buildEnvironmentVariables: map['buildEnvironmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariableResponse>(map['buildEnvironmentVariables'], (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      contextPath: map['contextPath'] == null ? null : map['contextPath'] as String,
      dockerfilePath: map['dockerfilePath'] == null ? null : map['dockerfilePath'] as String,
      image: map['image'] == null ? null : map['image'] as String,
      os: map['os'] == null ? null : map['os'] as String,
      publishType: map['publishType'] == null ? null : map['publishType'] as String,
      registryInfo: map['registryInfo'] == null ? null : RegistryInfoResponse.fromMap((map['registryInfo'] as Map).cast<String, dynamic>()),
      runtimeStack: map['runtimeStack'] == null ? null : map['runtimeStack'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
    );
  }
}

