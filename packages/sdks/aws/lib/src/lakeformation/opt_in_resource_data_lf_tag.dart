// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataLfTag {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// Key name for the LF-Tag.
  final pulumi.Input<String> key;
  /// Set of tag values for the LF-Tag key. At least one value is required. Each value can be 1-255 characters.
  final pulumi.Input<List<String>> values;

  /// Creates a new [OptInResourceDataLfTag].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [key] Key name for the LF-Tag.
  /// [values] Set of tag values for the LF-Tag key. At least one value is required. Each value can be 1-255 characters.
  const OptInResourceDataLfTag({
    this.catalogId,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'key': key,
      'values': values,
    };
  }

  factory OptInResourceDataLfTag.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataLfTag(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
