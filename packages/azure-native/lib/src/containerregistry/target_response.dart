// ignore_for_file: unused_element, unnecessary_cast


/// The target of the event.
class TargetResponse {
  /// The digest of the content, as defined by the Registry V2 HTTP API Specification.
  final String? digest;
  /// The number of bytes of the content. Same as Size field.
  final double? length;
  /// The MIME type of the referenced object.
  final String? mediaType;
  /// The name of the artifact.
  final String? name;
  /// The repository name.
  final String? repository;
  /// The number of bytes of the content. Same as Length field.
  final double? size;
  /// The tag name.
  final String? tag;
  /// The direct URL to the content.
  final String? url;
  /// The version of the artifact.
  final String? version;

  /// Creates a new [TargetResponse].
  /// [digest] The digest of the content, as defined by the Registry V2 HTTP API Specification.
  /// [length] The number of bytes of the content. Same as Size field.
  /// [mediaType] The MIME type of the referenced object.
  /// [name] The name of the artifact.
  /// [repository] The repository name.
  /// [size] The number of bytes of the content. Same as Length field.
  /// [tag] The tag name.
  /// [url] The direct URL to the content.
  /// [version] The version of the artifact.
  TargetResponse({
    this.digest,
    this.length,
    this.mediaType,
    this.name,
    this.repository,
    this.size,
    this.tag,
    this.url,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'length': ?length,
      'mediaType': ?mediaType,
      'name': ?name,
      'repository': ?repository,
      'size': ?size,
      'tag': ?tag,
      'url': ?url,
      'version': ?version,
    };
  }

  factory TargetResponse.fromMap(Map<String, dynamic> map) {
    return TargetResponse(
      digest: map['digest'] == null ? null : map['digest'] as String,
      length: map['length'] == null ? null : map['length'] as double,
      mediaType: map['mediaType'] == null ? null : map['mediaType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      repository: map['repository'] == null ? null : map['repository'] as String,
      size: map['size'] == null ? null : map['size'] as double,
      tag: map['tag'] == null ? null : map['tag'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

