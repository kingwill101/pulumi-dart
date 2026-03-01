// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a Stage.
class StageProperties {
  final List<String>? dependencies;
  final String? gitEnvironment;
  /// Stage Name
  final String? stageName;

  /// Creates a new [StageProperties].
  /// [dependencies] Optional.
  /// [gitEnvironment] Optional.
  /// [stageName] Stage Name
  StageProperties({
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
      dependencies: map['dependencies'] == null ? null : (map['dependencies'] as List).cast<String>(),
      gitEnvironment: map['gitEnvironment'] == null ? null : map['gitEnvironment'] as String,
      stageName: map['stageName'] == null ? null : map['stageName'] as String,
    );
  }
}

