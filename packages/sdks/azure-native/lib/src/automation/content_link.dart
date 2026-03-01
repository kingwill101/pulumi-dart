// ignore_for_file: unused_element, unnecessary_cast

import 'content_hash.dart';

/// Definition of the content link.
class ContentLink {
  /// Sets the hash.
  final ContentHash? contentHash;
  /// Sets the uri of the content.
  final String? uri;
  /// Sets the version of the content.
  final String? version;

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
      'contentHash': ?contentHash == null ? null : contentHash!.toMap(),
      'uri': ?uri,
      'version': ?version,
    };
  }

  factory ContentLink.fromMap(Map<String, dynamic> map) {
    return ContentLink(
      contentHash: map['contentHash'] == null ? null : ContentHash.fromMap((map['contentHash'] as Map).cast<String, dynamic>()),
      uri: map['uri'] == null ? null : map['uri'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

