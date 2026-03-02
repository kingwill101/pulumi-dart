// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsFilterTags {
  final pulumi.Input<String>? key;
  final pulumi.Input<List<String>>? matchOptions;
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GetTagsFilterTags].
  /// [key] Optional.
  /// [matchOptions] Optional.
  /// [values] Optional.
  GetTagsFilterTags({
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

  factory GetTagsFilterTags.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterTags(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      matchOptions: map['matchOptions'] == null ? null : ((map['matchOptions'] as List).cast<String>()).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

