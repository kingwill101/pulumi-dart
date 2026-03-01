// ignore_for_file: unused_element, unnecessary_cast


class GetAddressBooksBookEcsTag {
  /// The key of ECS tag that to be matched.
  final String tagKey;
  /// The value of ECS tag that to be matched.
  final String tagValue;

  /// Creates a new [GetAddressBooksBookEcsTag].
  /// [tagKey] The key of ECS tag that to be matched.
  /// [tagValue] The value of ECS tag that to be matched.
  GetAddressBooksBookEcsTag({
    required this.tagKey,
    required this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': tagKey,
      'tagValue': tagValue,
    };
  }

  factory GetAddressBooksBookEcsTag.fromMap(Map<String, dynamic> map) {
    return GetAddressBooksBookEcsTag(
      tagKey: map['tagKey'] as String,
      tagValue: map['tagValue'] as String,
    );
  }
}

