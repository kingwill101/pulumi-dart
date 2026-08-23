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
  const TargetResponse({
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
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      length: (() { final guardedValue = map['length']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      mediaType: (() { final guardedValue = map['mediaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
