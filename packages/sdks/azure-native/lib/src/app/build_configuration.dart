// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable.dart';
import 'pre_build_step.dart';

/// Configuration of the build.
class BuildConfiguration {
  /// Base OS used to build and run the app.
  final pulumi.Input<String?>? baseOs;
  /// List of environment variables to be passed to the build, secrets should not be used in environment variable.
  final pulumi.Input<List<EnvironmentVariable>?>? environmentVariables;
  /// Platform to be used to build and run the app.
  final pulumi.Input<String?>? platform;
  /// Platform version to be used to build and run the app.
  final pulumi.Input<String?>? platformVersion;
  /// List of steps to perform before the build.
  final pulumi.Input<List<PreBuildStep>?>? preBuildSteps;

  /// Creates a new [BuildConfiguration].
  /// [baseOs] Base OS used to build and run the app.
  /// [environmentVariables] List of environment variables to be passed to the build, secrets should not be used in environment variable.
  /// [platform] Platform to be used to build and run the app.
  /// [platformVersion] Platform version to be used to build and run the app.
  /// [preBuildSteps] List of steps to perform before the build.
  const BuildConfiguration({
    this.baseOs,
    this.environmentVariables,
    this.platform,
    this.platformVersion,
    this.preBuildSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseOs': ?baseOs,
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platform': ?platform,
      'platformVersion': ?platformVersion,
      'preBuildSteps': ?pulumi.Input.mapOptionalInputValue<List<PreBuildStep>, List<Map<String, dynamic>>>(preBuildSteps, (value) => pulumi.Input.encodeList<PreBuildStep, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BuildConfiguration.fromMap(Map<String, dynamic> map) {
    return BuildConfiguration(
      baseOs: (() { final guardedValue = map['baseOs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariable>(guardedValue, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preBuildSteps: (() { final guardedValue = map['preBuildSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreBuildStep>(guardedValue, (value) => PreBuildStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
