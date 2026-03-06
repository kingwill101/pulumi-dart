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
  const GithubActionConfigurationResponse({
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
      azureCredentials: (() { final guardedValue = map['azureCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildEnvironmentVariables: (() { final guardedValue = map['buildEnvironmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariableResponse>(guardedValue, (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contextPath: (() { final guardedValue = map['contextPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerfilePath: (() { final guardedValue = map['dockerfilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      os: (() { final guardedValue = map['os']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishType: (() { final guardedValue = map['publishType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryInfo: (() { final guardedValue = map['registryInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeStack: (() { final guardedValue = map['runtimeStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

