// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PermissionsLfTag {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// The key-name for the tag.
  final pulumi.Input<String> key;
  /// A list of possible values an attribute can take.
  ///
  /// The following argument is optional:
  final pulumi.Input<List<String>> values;

  /// Creates a new [PermissionsLfTag].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [key] The key-name for the tag.
  /// [values] A list of possible values an attribute can take.
  const PermissionsLfTag({
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

  factory PermissionsLfTag.fromMap(Map<String, dynamic> map) {
    return PermissionsLfTag(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

