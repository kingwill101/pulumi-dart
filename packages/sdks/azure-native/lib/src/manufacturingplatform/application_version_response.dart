// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about application versions
class ApplicationVersionResponse {
  /// Is Deprecated
  final pulumi.Input<bool> isDeprecated;
  /// Is Latest
  final pulumi.Input<bool> isLatest;
  /// Is Preview
  final pulumi.Input<bool> isPreview;
  /// Application Version
  final pulumi.Input<String> version;

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
      isDeprecated: (map['isDeprecated'] as bool).input(),
      isLatest: (map['isLatest'] as bool).input(),
      isPreview: (map['isPreview'] as bool).input(),
      version: (map['version'] as String).input(),
    );
  }
}

