// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The target of the event.
class TargetResponse {
  /// The digest of the content, as defined by the Registry V2 HTTP API Specification.
  final pulumi.Input<String>? digest;
  /// The number of bytes of the content. Same as Size field.
  final pulumi.Input<double>? length;
  /// The MIME type of the referenced object.
  final pulumi.Input<String>? mediaType;
  /// The name of the artifact.
  final pulumi.Input<String>? name;
  /// The repository name.
  final pulumi.Input<String>? repository;
  /// The number of bytes of the content. Same as Length field.
  final pulumi.Input<double>? size;
  /// The tag name.
  final pulumi.Input<String>? tag;
  /// The direct URL to the content.
  final pulumi.Input<String>? url;
  /// The version of the artifact.
  final pulumi.Input<String>? version;

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
      digest: map['digest'] == null ? null : (map['digest'] as String).input(),
      length: map['length'] == null ? null : (map['length'] as double).input(),
      mediaType: map['mediaType'] == null ? null : (map['mediaType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as double).input(),
      tag: map['tag'] == null ? null : (map['tag'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

