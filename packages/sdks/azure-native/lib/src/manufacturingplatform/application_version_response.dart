// ignore_for_file: unused_element, unnecessary_cast


/// Information about application versions
class ApplicationVersionResponse {
  /// Is Deprecated
  final bool isDeprecated;
  /// Is Latest
  final bool isLatest;
  /// Is Preview
  final bool isPreview;
  /// Application Version
  final String version;

  /// Creates a new [ApplicationVersionResponse].
  /// [isDeprecated] Is Deprecated
  /// [isLatest] Is Latest
  /// [isPreview] Is Preview
  /// [version] Application Version
  ApplicationVersionResponse({
    required this.isDeprecated,
    required this.isLatest,
    required this.isPreview,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDeprecated': isDeprecated,
      'isLatest': isLatest,
      'isPreview': isPreview,
      'version': version,
    };
  }

  factory ApplicationVersionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationVersionResponse(
      isDeprecated: map['isDeprecated'] as bool,
      isLatest: map['isLatest'] as bool,
      isPreview: map['isPreview'] as bool,
      version: map['version'] as String,
    );
  }
}

