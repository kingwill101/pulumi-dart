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
      digest: (() {
        final guardedValue = map['digest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registry: (() {
        final guardedValue = map['registry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repository: (() {
        final guardedValue = map['repository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tag: (() {
        final guardedValue = map['tag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
