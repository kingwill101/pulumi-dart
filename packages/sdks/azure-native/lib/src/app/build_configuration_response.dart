// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_response.dart';
import 'pre_build_step_response.dart';

/// Configuration of the build.
class BuildConfigurationResponse {
  /// Base OS used to build and run the app.
  final pulumi.Input<String>? baseOs;

  /// List of environment variables to be passed to the build, secrets should not be used in environment variable.
  final pulumi.Input<List<EnvironmentVariableResponse>>? environmentVariables;

  /// Platform to be used to build and run the app.
  final pulumi.Input<String>? platform;

  /// Platform version to be used to build and run the app.
  final pulumi.Input<String>? platformVersion;

  /// List of steps to perform before the build.
  final pulumi.Input<List<PreBuildStepResponse>>? preBuildSteps;

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
      'environmentVariables':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnvironmentVariableResponse>,
            List<Map<String, dynamic>>
          >(
            environmentVariables,
            (value) =>
                pulumi.Input.encodeList<
                  EnvironmentVariableResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'platform': ?platform,
      'platformVersion': ?platformVersion,
      'preBuildSteps':
          ?pulumi.Input.mapOptionalInputValue<
            List<PreBuildStepResponse>,
            List<Map<String, dynamic>>
          >(
            preBuildSteps,
            (value) =>
                pulumi.Input.encodeList<
                  PreBuildStepResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BuildConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BuildConfigurationResponse(
      baseOs: (() {
        final guardedValue = map['baseOs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EnvironmentVariableResponse>(
            guardedValue,
            (value) => EnvironmentVariableResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platformVersion: (() {
        final guardedValue = map['platformVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preBuildSteps: (() {
        final guardedValue = map['preBuildSteps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PreBuildStepResponse>(
            guardedValue,
            (value) => PreBuildStepResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
