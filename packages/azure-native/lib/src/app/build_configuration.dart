// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable.dart';
import 'pre_build_step.dart';

/// Configuration of the build.
class BuildConfiguration {
  /// Base OS used to build and run the app.
  final String? baseOs;
  /// List of environment variables to be passed to the build, secrets should not be used in environment variable.
  final List<EnvironmentVariable>? environmentVariables;
  /// Platform to be used to build and run the app.
  final String? platform;
  /// Platform version to be used to build and run the app.
  final String? platformVersion;
  /// List of steps to perform before the build.
  final List<PreBuildStep>? preBuildSteps;

  /// Creates a new [BuildConfiguration].
  /// [baseOs] Base OS used to build and run the app.
  /// [environmentVariables] List of environment variables to be passed to the build, secrets should not be used in environment variable.
  /// [platform] Platform to be used to build and run the app.
  /// [platformVersion] Platform version to be used to build and run the app.
  /// [preBuildSteps] List of steps to perform before the build.
  BuildConfiguration({
    this.baseOs,
    this.environmentVariables,
    this.platform,
    this.platformVersion,
    this.preBuildSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseOs': ?baseOs,
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'platform': ?platform,
      'platformVersion': ?platformVersion,
      'preBuildSteps': ?preBuildSteps == null ? null : pulumi.Input.encodeList<PreBuildStep, Map<String, dynamic>>(preBuildSteps!, (value) => value.toMap()),
    };
  }

  factory BuildConfiguration.fromMap(Map<String, dynamic> map) {
    return BuildConfiguration(
      baseOs: map['baseOs'] == null ? null : map['baseOs'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())),
      platform: map['platform'] == null ? null : map['platform'] as String,
      platformVersion: map['platformVersion'] == null ? null : map['platformVersion'] as String,
      preBuildSteps: map['preBuildSteps'] == null ? null : pulumi.Input.decodeList<PreBuildStep>(map['preBuildSteps'], (value) => PreBuildStep.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

