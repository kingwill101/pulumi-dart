// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_credentials.dart';
import 'environment_variable.dart';
import 'registry_info.dart';

/// Configuration properties that define the mutable settings of a Container App SourceControl
class GithubActionConfiguration {
  /// AzureCredentials configurations.
  final pulumi.Input<AzureCredentials>? azureCredentials;
  /// List of environment variables to be passed to the build.
  final pulumi.Input<List<EnvironmentVariable>>? buildEnvironmentVariables;
  /// Context path
  final pulumi.Input<String>? contextPath;
  /// Dockerfile path
  final pulumi.Input<String>? dockerfilePath;
  /// One time Github PAT to configure github environment
  final pulumi.Input<String>? githubPersonalAccessToken;
  /// Image name
  final pulumi.Input<String>? image;
  /// Operation system
  final pulumi.Input<String>? os;
  /// Code or Image
  final pulumi.Input<String>? publishType;
  /// Registry configurations.
  final pulumi.Input<RegistryInfo>? registryInfo;
  /// Runtime stack
  final pulumi.Input<String>? runtimeStack;
  /// Runtime version
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [GithubActionConfiguration].
  /// [azureCredentials] AzureCredentials configurations.
  /// [buildEnvironmentVariables] List of environment variables to be passed to the build.
  /// [contextPath] Context path
  /// [dockerfilePath] Dockerfile path
  /// [githubPersonalAccessToken] One time Github PAT to configure github environment
  /// [image] Image name
  /// [os] Operation system
  /// [publishType] Code or Image
  /// [registryInfo] Registry configurations.
  /// [runtimeStack] Runtime stack
  /// [runtimeVersion] Runtime version
  GithubActionConfiguration({
    this.azureCredentials,
    this.buildEnvironmentVariables,
    this.contextPath,
    this.dockerfilePath,
    this.githubPersonalAccessToken,
    this.image,
    this.os,
    this.publishType,
    this.registryInfo,
    this.runtimeStack,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureCredentials': ?pulumi.Input.mapOptionalInputValue<AzureCredentials, Map<String, dynamic>>(azureCredentials, (value) => value.toMap()),
      'buildEnvironmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariable>, List<Map<String, dynamic>>>(buildEnvironmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contextPath': ?contextPath,
      'dockerfilePath': ?dockerfilePath,
      'githubPersonalAccessToken': ?githubPersonalAccessToken,
      'image': ?image,
      'os': ?os,
      'publishType': ?publishType,
      'registryInfo': ?pulumi.Input.mapOptionalInputValue<RegistryInfo, Map<String, dynamic>>(registryInfo, (value) => value.toMap()),
      'runtimeStack': ?runtimeStack,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory GithubActionConfiguration.fromMap(Map<String, dynamic> map) {
    return GithubActionConfiguration(
      azureCredentials: map['azureCredentials'] == null ? null : (AzureCredentials.fromMap((map['azureCredentials']! as Map).cast<String, dynamic>())).input(),
      buildEnvironmentVariables: map['buildEnvironmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvironmentVariable>(map['buildEnvironmentVariables']!, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contextPath: map['contextPath'] == null ? null : (map['contextPath']! as String).input(),
      dockerfilePath: map['dockerfilePath'] == null ? null : (map['dockerfilePath']! as String).input(),
      githubPersonalAccessToken: map['githubPersonalAccessToken'] == null ? null : (map['githubPersonalAccessToken']! as String).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      os: map['os'] == null ? null : (map['os']! as String).input(),
      publishType: map['publishType'] == null ? null : (map['publishType']! as String).input(),
      registryInfo: map['registryInfo'] == null ? null : (RegistryInfo.fromMap((map['registryInfo']! as Map).cast<String, dynamic>())).input(),
      runtimeStack: map['runtimeStack'] == null ? null : (map['runtimeStack']! as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
    );
  }
}

