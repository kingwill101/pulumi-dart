// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcesTagFilter {
  /// One part of a key-value pair that makes up a tag.
  final pulumi.Input<String> key;
  /// Optional part of a key-value pair that make up a tag.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GetResourcesTagFilter].
  /// [key] One part of a key-value pair that makes up a tag.
  /// [values] Optional part of a key-value pair that make up a tag.
  const GetResourcesTagFilter({
    required this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': ?values,
    };
  }

  factory GetResourcesTagFilter.fromMap(Map<String, dynamic> map) {
    return GetResourcesTagFilter(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

