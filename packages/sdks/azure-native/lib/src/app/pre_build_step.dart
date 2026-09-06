// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_get.dart';

/// Model representing a pre-build step.
class PreBuildStep {
  /// Description of the pre-build step.
  final pulumi.Input<String?>? description;
  /// Http get request to send before the build.
  final pulumi.Input<HttpGet?>? httpGet;
  /// List of custom commands to run.
  final pulumi.Input<List<String>?>? scripts;

  /// Creates a new [PreBuildStep].
  /// [description] Description of the pre-build step.
  /// [httpGet] Http get request to send before the build.
  /// [scripts] List of custom commands to run.
  const PreBuildStep({
    this.description,
    this.httpGet,
    this.scripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'httpGet': ?pulumi.Input.mapOptionalInputValue<HttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'scripts': ?scripts,
    };
  }

  factory PreBuildStep.fromMap(Map<String, dynamic> map) {
    return PreBuildStep(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scripts: (() { final guardedValue = map['scripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
