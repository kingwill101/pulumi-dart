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
      'azureCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            AzureCredentials,
            Map<String, dynamic>
          >(azureCredentials, (value) => value.toMap()),
      'buildEnvironmentVariables':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnvironmentVariable>,
            List<Map<String, dynamic>>
          >(
            buildEnvironmentVariables,
            (value) =>
                pulumi.Input.encodeList<
                  EnvironmentVariable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'contextPath': ?contextPath,
      'dockerfilePath': ?dockerfilePath,
      'githubPersonalAccessToken': ?githubPersonalAccessToken,
      'image': ?image,
      'os': ?os,
      'publishType': ?publishType,
      'registryInfo':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryInfo,
            Map<String, dynamic>
          >(registryInfo, (value) => value.toMap()),
      'runtimeStack': ?runtimeStack,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory GithubActionConfiguration.fromMap(Map<String, dynamic> map) {
    return GithubActionConfiguration(
      azureCredentials: (() {
        final guardedValue = map['azureCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      buildEnvironmentVariables: (() {
        final guardedValue = map['buildEnvironmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EnvironmentVariable>(
            guardedValue,
            (value) => EnvironmentVariable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      contextPath: (() {
        final guardedValue = map['contextPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dockerfilePath: (() {
        final guardedValue = map['dockerfilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      githubPersonalAccessToken: (() {
        final guardedValue = map['githubPersonalAccessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      os: (() {
        final guardedValue = map['os'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publishType: (() {
        final guardedValue = map['publishType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryInfo: (() {
        final guardedValue = map['registryInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryInfo.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      runtimeStack: (() {
        final guardedValue = map['runtimeStack'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtimeVersion: (() {
        final guardedValue = map['runtimeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
