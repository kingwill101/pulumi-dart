// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_hash.dart';

/// Definition of the content source.
class ContentSource {
  /// Gets or sets the hash.
  final pulumi.Input<ContentHash>? hash;
  /// Gets or sets the content source type.
  final pulumi.Input<String>? type;
  /// Gets or sets the value of the content. This is based on the content source type.
  final pulumi.Input<String>? value;
  /// Gets or sets the version of the content.
  final pulumi.Input<String>? version;

  /// Creates a new [ContentSource].
  /// [hash] Gets or sets the hash.
  /// [type] Gets or sets the content source type.
  /// [value] Gets or sets the value of the content. This is based on the content source type.
  /// [version] Gets or sets the version of the content.
  const ContentSource({
    this.hash,
    this.type,
    this.value,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': ?pulumi.Input.mapOptionalInputValue<ContentHash, Map<String, dynamic>>(hash, (value) => value.toMap()),
      'type': ?type,
      'value': ?value,
      'version': ?version,
    };
  }

  factory ContentSource.fromMap(Map<String, dynamic> map) {
    return ContentSource(
      hash: (() { final guardedValue = map['hash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContentHash.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
