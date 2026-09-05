// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceLfTagLfTag {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String?>? catalogId;
  /// Key name for an existing LF-tag.
  final pulumi.Input<String> key;
  /// Value from the possible values for the LF-tag.
  ///
  /// The following argument is optional:
  final pulumi.Input<String> value;

  /// Creates a new [ResourceLfTagLfTag].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [key] Key name for an existing LF-tag.
  /// [value] Value from the possible values for the LF-tag.
  const ResourceLfTagLfTag({
    this.catalogId,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'key': key,
      'value': value,
    };
  }

  factory ResourceLfTagLfTag.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagLfTag(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
