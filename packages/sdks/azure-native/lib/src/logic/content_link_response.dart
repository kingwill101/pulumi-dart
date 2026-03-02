// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_hash_response.dart';

/// The content link.
class ContentLinkResponse {
  /// The content hash.
  final pulumi.Input<ContentHashResponse> contentHash;
  /// The content size.
  final pulumi.Input<double> contentSize;
  /// The content version.
  final pulumi.Input<String> contentVersion;
  /// The metadata.
  final pulumi.Input<dynamic> metadata;
  /// The content link URI.
  final pulumi.Input<String>? uri;

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
      'contentHash': pulumi.Input.mapInputValue<ContentHashResponse, Map<String, dynamic>>(contentHash, (value) => value.toMap()),
      'contentSize': contentSize,
      'contentVersion': contentVersion,
      'metadata': metadata,
      'uri': ?uri,
    };
  }

  factory ContentLinkResponse.fromMap(Map<String, dynamic> map) {
    return ContentLinkResponse(
      contentHash: (ContentHashResponse.fromMap((map['contentHash'] as Map).cast<String, dynamic>())).input(),
      contentSize: (map['contentSize'] as double).input(),
      contentVersion: (map['contentVersion'] as String).input(),
      metadata: (map['metadata']).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

