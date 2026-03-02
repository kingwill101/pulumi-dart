// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_get_response.dart';

/// Model representing a pre-build step.
class PreBuildStepResponse {
  /// Description of the pre-build step.
  final pulumi.Input<String>? description;
  /// Http get request to send before the build.
  final pulumi.Input<HttpGetResponse>? httpGet;
  /// List of custom commands to run.
  final pulumi.Input<List<String>>? scripts;

  /// Creates a new [PreBuildStepResponse].
  /// [description] Description of the pre-build step.
  /// [httpGet] Http get request to send before the build.
  /// [scripts] List of custom commands to run.
  PreBuildStepResponse({
    this.description,
    this.httpGet,
    this.scripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'httpGet': ?pulumi.Input.mapOptionalInputValue<HttpGetResponse, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'scripts': ?scripts,
    };
  }

  factory PreBuildStepResponse.fromMap(Map<String, dynamic> map) {
    return PreBuildStepResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      httpGet: map['httpGet'] == null ? null : (HttpGetResponse.fromMap((map['httpGet'] as Map).cast<String, dynamic>())).input(),
      scripts: map['scripts'] == null ? null : ((map['scripts'] as List).cast<String>()).input(),
    );
  }
}

