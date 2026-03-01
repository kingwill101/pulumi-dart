// ignore_for_file: unused_element, unnecessary_cast


/// Framework specific data for a web application.
class WebApplicationFramework {
  /// Gets or sets Name of the framework.
  final String? name;
  /// Gets or sets Version of the framework.
  final String? version;

  /// Creates a new [WebApplicationFramework].
  /// [name] Gets or sets Name of the framework.
  /// [version] Gets or sets Version of the framework.
  WebApplicationFramework({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory WebApplicationFramework.fromMap(Map<String, dynamic> map) {
    return WebApplicationFramework(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

