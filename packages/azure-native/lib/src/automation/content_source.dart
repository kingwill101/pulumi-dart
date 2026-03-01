// ignore_for_file: unused_element, unnecessary_cast

import 'content_hash.dart';

/// Definition of the content source.
class ContentSource {
  /// Gets or sets the hash.
  final ContentHash? hash;
  /// Gets or sets the content source type.
  final String? type;
  /// Gets or sets the value of the content. This is based on the content source type.
  final String? value;
  /// Gets or sets the version of the content.
  final String? version;

  /// Creates a new [ContentSource].
  /// [hash] Gets or sets the hash.
  /// [type] Gets or sets the content source type.
  /// [value] Gets or sets the value of the content. This is based on the content source type.
  /// [version] Gets or sets the version of the content.
  ContentSource({
    this.hash,
    this.type,
    this.value,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': ?hash == null ? null : hash!.toMap(),
      'type': ?type,
      'value': ?value,
      'version': ?version,
    };
  }

  factory ContentSource.fromMap(Map<String, dynamic> map) {
    return ContentSource(
      hash: map['hash'] == null ? null : ContentHash.fromMap((map['hash'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

