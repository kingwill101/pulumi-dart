// ignore_for_file: unused_element, unnecessary_cast

import 'content_hash_response.dart';

/// The content link.
class ContentLinkResponse {
  /// The content hash.
  final ContentHashResponse contentHash;
  /// The content size.
  final double contentSize;
  /// The content version.
  final String contentVersion;
  /// The metadata.
  final dynamic metadata;
  /// The content link URI.
  final String? uri;

  /// Creates a new [ContentLinkResponse].
  /// [contentHash] The content hash.
  /// [contentSize] The content size.
  /// [contentVersion] The content version.
  /// [metadata] The metadata.
  /// [uri] The content link URI.
  ContentLinkResponse({
    required this.contentHash,
    required this.contentSize,
    required this.contentVersion,
    required this.metadata,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHash': contentHash.toMap(),
      'contentSize': contentSize,
      'contentVersion': contentVersion,
      'metadata': metadata,
      'uri': ?uri,
    };
  }

  factory ContentLinkResponse.fromMap(Map<String, dynamic> map) {
    return ContentLinkResponse(
      contentHash: ContentHashResponse.fromMap((map['contentHash'] as Map).cast<String, dynamic>()),
      contentSize: map['contentSize'] as double,
      contentVersion: map['contentVersion'] as String,
      metadata: map['metadata'],
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

