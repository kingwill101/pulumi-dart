// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a Stage.
class StageProperties {
  final pulumi.Input<List<String>>? dependencies;
  final pulumi.Input<String>? gitEnvironment;
  /// Stage Name
  final pulumi.Input<String>? stageName;

  /// Creates a new [StageProperties].
  /// [dependencies] Optional.
  /// [gitEnvironment] Optional.
  /// [stageName] Stage Name
  const StageProperties({
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

  factory StageProperties.fromMap(Map<String, dynamic> map) {
    return StageProperties(
      dependencies: (() { final guardedValue = map['dependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gitEnvironment: (() { final guardedValue = map['gitEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stageName: (() { final guardedValue = map['stageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
