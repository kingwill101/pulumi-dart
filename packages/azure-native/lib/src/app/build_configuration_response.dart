// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_response.dart';
import 'pre_build_step_response.dart';

/// Configuration of the build.
class BuildConfigurationResponse {
  /// Base OS used to build and run the app.
  final String? baseOs;
  /// List of environment variables to be passed to the build, secrets should not be used in environment variable.
  final List<EnvironmentVariableResponse>? environmentVariables;
  /// Platform to be used to build and run the app.
  final String? platform;
  /// Platform version to be used to build and run the app.
  final String? platformVersion;
  /// List of steps to perform before the build.
  final List<PreBuildStepResponse>? preBuildSteps;

  /// Creates a new [BuildConfigurationResponse].
  /// [baseOs] Base OS used to build and run the app.
  /// [environmentVariables] List of environment variables to be passed to the build, secrets should not be used in environment variable.
  /// [platform] Platform to be used to build and run the app.
  /// [platformVersion] Platform version to be used to build and run the app.
  /// [preBuildSteps] List of steps to perform before the build.
  BuildConfigurationResponse({
    this.baseOs,
    this.environmentVariables,
    this.platform,
    this.platformVersion,
    this.preBuildSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseOs': ?baseOs,
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'platform': ?platform,
      'platformVersion': ?platformVersion,
      'preBuildSteps': ?preBuildSteps == null ? null : pulumi.Input.encodeList<PreBuildStepResponse, Map<String, dynamic>>(preBuildSteps!, (value) => value.toMap()),
    };
  }

  factory BuildConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BuildConfigurationResponse(
      baseOs: map['baseOs'] == null ? null : map['baseOs'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariableResponse>(map['environmentVariables'], (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      platform: map['platform'] == null ? null : map['platform'] as String,
      platformVersion: map['platformVersion'] == null ? null : map['platformVersion'] as String,
      preBuildSteps: map['preBuildSteps'] == null ? null : pulumi.Input.decodeList<PreBuildStepResponse>(map['preBuildSteps'], (value) => PreBuildStepResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

