// ignore_for_file: unused_element, unnecessary_cast


class GetTagsFilterOrTags {
  final String? key;
  final List<String>? matchOptions;
  final List<String>? values;

  /// Creates a new [GetTagsFilterOrTags].
  /// [key] Optional.
  /// [matchOptions] Optional.
  /// [values] Optional.
  GetTagsFilterOrTags({
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

  factory GetTagsFilterOrTags.fromMap(Map<String, dynamic> map) {
    return GetTagsFilterOrTags(
      key: map['key'] == null ? null : map['key'] as String,
      matchOptions: map['matchOptions'] == null ? null : (map['matchOptions'] as List).cast<String>(),
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

