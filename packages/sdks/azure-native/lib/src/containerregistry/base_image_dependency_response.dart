// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties that describe a base image dependency.
class BaseImageDependencyResponse {
  /// The sha256-based digest of the image manifest.
  final pulumi.Input<String>? digest;
  /// The registry login server.
  final pulumi.Input<String>? registry;
  /// The repository name.
  final pulumi.Input<String>? repository;
  /// The tag name.
  final pulumi.Input<String>? tag;
  /// The type of the base image dependency.
  final pulumi.Input<String>? type;

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
      digest: map['digest'] == null ? null : (map['digest'] as String).input(),
      registry: map['registry'] == null ? null : (map['registry'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

