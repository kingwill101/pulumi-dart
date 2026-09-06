// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_hash_response.dart';

/// Definition of the content source.
class ContentSourceResponse {
  /// Gets or sets the hash.
  final pulumi.Input<ContentHashResponse?>? hash;
  /// Gets or sets the content source type.
  final pulumi.Input<String?>? type;
  /// Gets or sets the value of the content. This is based on the content source type.
  final pulumi.Input<String?>? value;
  /// Gets or sets the version of the content.
  final pulumi.Input<String?>? version;

  /// Creates a new [ContentSourceResponse].
  /// [hash] Gets or sets the hash.
  /// [type] Gets or sets the content source type.
  /// [value] Gets or sets the value of the content. This is based on the content source type.
  /// [version] Gets or sets the version of the content.
  const ContentSourceResponse({
    this.hash,
    this.type,
    this.value,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': ?pulumi.Input.mapOptionalInputValue<ContentHashResponse, Map<String, dynamic>>(hash, (value) => value.toMap()),
      'type': ?type,
      'value': ?value,
      'version': ?version,
    };
  }

  factory ContentSourceResponse.fromMap(Map<String, dynamic> map) {
    return ContentSourceResponse(
      hash: (() { final guardedValue = map['hash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContentHashResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
