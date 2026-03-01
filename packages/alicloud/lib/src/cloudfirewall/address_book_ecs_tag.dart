// ignore_for_file: unused_element, unnecessary_cast


class AddressBookEcsTag {
  /// The key of ECS tag that to be matched.
  final String? tagKey;
  /// The value of ECS tag that to be matched.
  final String? tagValue;

  /// Creates a new [AddressBookEcsTag].
  /// [tagKey] The key of ECS tag that to be matched.
  /// [tagValue] The value of ECS tag that to be matched.
  AddressBookEcsTag({
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AddressBookEcsTag.fromMap(Map<String, dynamic> map) {
    return AddressBookEcsTag(
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}

