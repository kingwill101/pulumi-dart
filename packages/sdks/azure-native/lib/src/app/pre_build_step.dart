// ignore_for_file: unused_element, unnecessary_cast

import 'http_get.dart';

/// Model representing a pre-build step.
class PreBuildStep {
  /// Description of the pre-build step.
  final String? description;
  /// Http get request to send before the build.
  final HttpGet? httpGet;
  /// List of custom commands to run.
  final List<String>? scripts;

  /// Creates a new [PreBuildStep].
  /// [description] Description of the pre-build step.
  /// [httpGet] Http get request to send before the build.
  /// [scripts] List of custom commands to run.
  PreBuildStep({
    this.description,
    this.httpGet,
    this.scripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'scripts': ?scripts,
    };
  }

  factory PreBuildStep.fromMap(Map<String, dynamic> map) {
    return PreBuildStep(
      description: map['description'] == null ? null : map['description'] as String,
      httpGet: map['httpGet'] == null ? null : HttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      scripts: map['scripts'] == null ? null : (map['scripts'] as List).cast<String>(),
    );
  }
}

