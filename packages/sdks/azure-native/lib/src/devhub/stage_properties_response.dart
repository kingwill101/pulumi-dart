// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a Stage.
class StagePropertiesResponse {
  final pulumi.Input<List<String>>? dependencies;
  final pulumi.Input<String>? gitEnvironment;
  /// Stage Name
  final pulumi.Input<String>? stageName;

  /// Creates a new [StagePropertiesResponse].
  /// [dependencies] Optional.
  /// [gitEnvironment] Optional.
  /// [stageName] Stage Name
  StagePropertiesResponse({
    this.dependencies,
    this.gitEnvironment,
    this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependencies': ?dependencies,
      'gitEnvironment': ?gitEnvironment,
      'stageName': ?stageName,
    };
  }

  factory StagePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StagePropertiesResponse(
      dependencies: map['dependencies'] == null ? null : ((map['dependencies'] as List).cast<String>()).input(),
      gitEnvironment: map['gitEnvironment'] == null ? null : (map['gitEnvironment'] as String).input(),
      stageName: map['stageName'] == null ? null : (map['stageName'] as String).input(),
    );
  }
}

