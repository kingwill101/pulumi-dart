// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsFilterAndTags {
  final pulumi.Input<String>? key;
  final pulumi.Input<List<String>>? matchOptions;
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GetTagsFilterAndTags].
  /// [key] Optional.
  /// [matchOptions] Optional.
  /// [values] Optional.
  const GetTagsFilterAndTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'matchOptions': ?matchOptions,
      'values': ?values,
    };
  }

  factory GetTagsFilterAndTags.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterAndTags(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchOptions: (() { final guardedValue = map['matchOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
