// ignore_for_file: unused_element, unnecessary_cast

import 'content_hash_response.dart';

/// Definition of the content link.
class ContentLinkResponse {
  /// Gets or sets the hash.
  final ContentHashResponse? contentHash;
  /// Gets or sets the uri of content.
  final String? uri;
  /// Gets or sets the version of the content.
  final String? version;

  /// Creates a new [ContentLinkResponse].
  /// [contentHash] Gets or sets the hash.
  /// [uri] Gets or sets the uri of content.
  /// [version] Gets or sets the version of the content.
  ContentLinkResponse({
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

  factory ContentLinkResponse.fromMap(Map<String, dynamic> map) {
    return ContentLinkResponse(
      contentHash: map['contentHash'] == null ? null : ContentHashResponse.fromMap((map['contentHash'] as Map).cast<String, dynamic>()),
      uri: map['uri'] == null ? null : map['uri'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

