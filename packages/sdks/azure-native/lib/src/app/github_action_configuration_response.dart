// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_credentials_response.dart';
import 'environment_variable_response.dart';
import 'registry_info_response.dart';

/// Configuration properties that define the mutable settings of a Container App SourceControl
class GithubActionConfigurationResponse {
  /// AzureCredentials configurations.
  final pulumi.Input<AzureCredentialsResponse>? azureCredentials;
  /// List of environment variables to be passed to the build.
  final pulumi.Input<List<EnvironmentVariableResponse>>? buildEnvironmentVariables;
  /// Context path
  final pulumi.Input<String>? contextPath;
  /// Dockerfile path
  final pulumi.Input<String>? dockerfilePath;
  /// Image name
  final pulumi.Input<String>? image;
  /// Operation system
  final pulumi.Input<String>? os;
  /// Code or Image
  final pulumi.Input<String>? publishType;
  /// Registry configurations.
  final pulumi.Input<RegistryInfoResponse>? registryInfo;
  /// Runtime stack
  final pulumi.Input<String>? runtimeStack;
  /// Runtime version
  final pulumi.Input<String>? runtimeVersion;

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
      'azureCredentials': ?pulumi.Input.mapOptionalInputValue<AzureCredentialsResponse, Map<String, dynamic>>(azureCredentials, (value) => value.toMap()),
      'buildEnvironmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariableResponse>, List<Map<String, dynamic>>>(buildEnvironmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contextPath': ?contextPath,
      'dockerfilePath': ?dockerfilePath,
      'image': ?image,
      'os': ?os,
      'publishType': ?publishType,
      'registryInfo': ?pulumi.Input.mapOptionalInputValue<RegistryInfoResponse, Map<String, dynamic>>(registryInfo, (value) => value.toMap()),
      'runtimeStack': ?runtimeStack,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory GithubActionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GithubActionConfigurationResponse(
      azureCredentials: map['azureCredentials'] == null ? null : (AzureCredentialsResponse.fromMap((map['azureCredentials']! as Map).cast<String, dynamic>())).input(),
      buildEnvironmentVariables: map['buildEnvironmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvironmentVariableResponse>(map['buildEnvironmentVariables']!, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contextPath: map['contextPath'] == null ? null : (map['contextPath']! as String).input(),
      dockerfilePath: map['dockerfilePath'] == null ? null : (map['dockerfilePath']! as String).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      os: map['os'] == null ? null : (map['os']! as String).input(),
      publishType: map['publishType'] == null ? null : (map['publishType']! as String).input(),
      registryInfo: map['registryInfo'] == null ? null : (RegistryInfoResponse.fromMap((map['registryInfo']! as Map).cast<String, dynamic>())).input(),
      runtimeStack: map['runtimeStack'] == null ? null : (map['runtimeStack']! as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
    );
  }
}

