// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Buildpack properties payload
class BuildpackPropertiesResponse {
  /// Id of the buildpack
  final pulumi.Input<String>? id;
  /// Version of the buildpack
  final pulumi.Input<String> version;

  /// Creates a new [BuildpackPropertiesResponse].
  /// [id] Id of the buildpack
  /// [version] Version of the buildpack
  BuildpackPropertiesResponse({
    this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'version': version,
    };
  }

  factory BuildpackPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BuildpackPropertiesResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

