// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Application
class ApplicationResponse {
  /// <p>This option is for advanced users only. This is meta information about third-party applications that third-party vendors use for testing purposes.</p>
  final Map<String, String>? additionalInfo;
  /// <p>Arguments for Amazon EMR to pass to the application.</p>
  final List<String>? args;
  /// <p>The name of the application.</p>
  final String? name;
  /// <p>The version of the application.</p>
  final String? version;

  /// Creates a new [ApplicationResponse].
  /// [additionalInfo] <p>This option is for advanced users only. This is meta information about third-party applications that third-party vendors use for testing purposes.</p>
  /// [args] <p>Arguments for Amazon EMR to pass to the application.</p>
  /// [name] <p>The name of the application.</p>
  /// [version] <p>The version of the application.</p>
  ApplicationResponse({
    this.additionalInfo,
    this.args,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?additionalInfo,
      'args': ?args,
      'name': ?name,
      'version': ?version,
    };
  }

  factory ApplicationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationResponse(
      additionalInfo: map['additionalInfo'] == null ? null : (map['additionalInfo'] as Map).cast<String, String>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

