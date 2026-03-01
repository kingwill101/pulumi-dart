// ignore_for_file: unused_element, unnecessary_cast


/// Environment information
class ComputeInstanceEnvironmentInfoResponse {
  /// name of environment.
  final String? name;
  /// version of environment.
  final String? version;

  /// Creates a new [ComputeInstanceEnvironmentInfoResponse].
  /// [name] name of environment.
  /// [version] version of environment.
  ComputeInstanceEnvironmentInfoResponse({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory ComputeInstanceEnvironmentInfoResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceEnvironmentInfoResponse(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

