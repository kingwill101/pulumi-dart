// ignore_for_file: unused_element, unnecessary_cast

class DatasetTagsItem {
  /// [Required] The namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is org id.
  final String? tagKey;

  /// [Required] Friendly short name of the tag value, e.g. "production".
  final String? tagValue;

  /// Creates a new [DatasetTagsItem].
  /// [tagKey] [Required] The namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is org id.
  /// [tagValue] [Required] Friendly short name of the tag value, e.g. "production".
  DatasetTagsItem({
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tagKeyValue = tagKey;
    if (tagKeyValue != null) {
      map['tagKey'] = tagKeyValue;
    }
    final tagValueValue = tagValue;
    if (tagValueValue != null) {
      map['tagValue'] = tagValueValue;
    }
    return map;
  }

  factory DatasetTagsItem.fromMap(Map<String, dynamic> map) {
    return DatasetTagsItem(
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}
