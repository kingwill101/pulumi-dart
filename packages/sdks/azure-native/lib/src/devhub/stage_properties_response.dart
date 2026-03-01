// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a Stage.
class StagePropertiesResponse {
  final List<String>? dependencies;
  final String? gitEnvironment;
  /// Stage Name
  final String? stageName;

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
      dependencies: map['dependencies'] == null ? null : (map['dependencies'] as List).cast<String>(),
      gitEnvironment: map['gitEnvironment'] == null ? null : map['gitEnvironment'] as String,
      stageName: map['stageName'] == null ? null : map['stageName'] as String,
    );
  }
}

