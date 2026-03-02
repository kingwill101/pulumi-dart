// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataLfTag {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [OptInResourceDataLfTag].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [key] Required.
  /// [value] Required.
  OptInResourceDataLfTag({
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

  factory OptInResourceDataLfTag.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataLfTag(
      catalogId: map['catalogId'] == null ? null : ((map['catalogId'] as String).input()).input(),
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

