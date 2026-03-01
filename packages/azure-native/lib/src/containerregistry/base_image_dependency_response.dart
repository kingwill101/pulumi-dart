// ignore_for_file: unused_element, unnecessary_cast


/// Properties that describe a base image dependency.
class BaseImageDependencyResponse {
  /// The sha256-based digest of the image manifest.
  final String? digest;
  /// The registry login server.
  final String? registry;
  /// The repository name.
  final String? repository;
  /// The tag name.
  final String? tag;
  /// The type of the base image dependency.
  final String? type;

  /// Creates a new [BaseImageDependencyResponse].
  /// [digest] The sha256-based digest of the image manifest.
  /// [registry] The registry login server.
  /// [repository] The repository name.
  /// [tag] The tag name.
  /// [type] The type of the base image dependency.
  BaseImageDependencyResponse({
    this.digest,
    this.registry,
    this.repository,
    this.tag,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'registry': ?registry,
      'repository': ?repository,
      'tag': ?tag,
      'type': ?type,
    };
  }

  factory BaseImageDependencyResponse.fromMap(Map<String, dynamic> map) {
    return BaseImageDependencyResponse(
      digest: map['digest'] == null ? null : map['digest'] as String,
      registry: map['registry'] == null ? null : map['registry'] as String,
      repository: map['repository'] == null ? null : map['repository'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

