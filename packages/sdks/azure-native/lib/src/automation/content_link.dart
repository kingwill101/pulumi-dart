// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_hash.dart';

/// Definition of the content link.
class ContentLink {
  /// Sets the hash.
  final pulumi.Input<ContentHash>? contentHash;
  /// Sets the uri of the content.
  final pulumi.Input<String>? uri;
  /// Sets the version of the content.
  final pulumi.Input<String>? version;

  /// Creates a new [ContentLink].
  /// [contentHash] Sets the hash.
  /// [uri] Sets the uri of the content.
  /// [version] Sets the version of the content.
  ContentLink({
    this.contentHash,
    this.uri,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHash': ?pulumi.Input.mapOptionalInputValue<ContentHash, Map<String, dynamic>>(contentHash, (value) => value.toMap()),
      'uri': ?uri,
      'version': ?version,
    };
  }

  factory ContentLink.fromMap(Map<String, dynamic> map) {
    return ContentLink(
      contentHash: (() { final guardedValue = map['contentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContentHash.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

