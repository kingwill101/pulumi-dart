// ignore_for_file: unused_element, unnecessary_cast

import 'content_link_response.dart';

/// The assembly properties definition.
class AssemblyPropertiesResponse {
  /// The assembly culture.
  final String? assemblyCulture;
  /// The assembly name.
  final String assemblyName;
  /// The assembly public key token.
  final String? assemblyPublicKeyToken;
  /// The assembly version.
  final String? assemblyVersion;
  /// The artifact changed time.
  final String? changedTime;
  final dynamic content;
  /// The content link.
  final ContentLinkResponse? contentLink;
  /// The content type.
  final String? contentType;
  /// The artifact creation time.
  final String? createdTime;
  final dynamic metadata;

  /// Creates a new [AssemblyPropertiesResponse].
  /// [assemblyCulture] The assembly culture.
  /// [assemblyName] The assembly name.
  /// [assemblyPublicKeyToken] The assembly public key token.
  /// [assemblyVersion] The assembly version.
  /// [changedTime] The artifact changed time.
  /// [content] Optional.
  /// [contentLink] The content link.
  /// [contentType] The content type.
  /// [createdTime] The artifact creation time.
  /// [metadata] Optional.
  AssemblyPropertiesResponse({
    this.assemblyCulture,
    required this.assemblyName,
    this.assemblyPublicKeyToken,
    this.assemblyVersion,
    this.changedTime,
    this.content,
    this.contentLink,
    this.contentType,
    this.createdTime,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyCulture': ?assemblyCulture,
      'assemblyName': assemblyName,
      'assemblyPublicKeyToken': ?assemblyPublicKeyToken,
      'assemblyVersion': ?assemblyVersion,
      'changedTime': ?changedTime,
      'content': ?content,
      'contentLink': ?contentLink == null ? null : contentLink!.toMap(),
      'contentType': ?contentType,
      'createdTime': ?createdTime,
      'metadata': ?metadata,
    };
  }

  factory AssemblyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AssemblyPropertiesResponse(
      assemblyCulture: map['assemblyCulture'] == null ? null : map['assemblyCulture'] as String,
      assemblyName: map['assemblyName'] as String,
      assemblyPublicKeyToken: map['assemblyPublicKeyToken'] == null ? null : map['assemblyPublicKeyToken'] as String,
      assemblyVersion: map['assemblyVersion'] == null ? null : map['assemblyVersion'] as String,
      changedTime: map['changedTime'] == null ? null : map['changedTime'] as String,
      content: map['content'] == null ? null : map['content'],
      contentLink: map['contentLink'] == null ? null : ContentLinkResponse.fromMap((map['contentLink'] as Map).cast<String, dynamic>()),
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      createdTime: map['createdTime'] == null ? null : map['createdTime'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
    );
  }
}

