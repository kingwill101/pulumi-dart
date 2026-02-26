// ignore_for_file: unused_element, unnecessary_cast

class TagTag {
  /// Tag name.
  final String key;

  /// Whether to propagate the tags to instances launched by the ASG.
  final bool propagateAtLaunch;

  /// Tag value.
  final String value;

  TagTag({
    required this.key,
    required this.propagateAtLaunch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['propagateAtLaunch'] = propagateAtLaunch;
    map['value'] = value;
    return map;
  }

  factory TagTag.fromMap(Map<String, dynamic> map) {
    return TagTag(
      key: map['key'] as String,
      propagateAtLaunch: map['propagateAtLaunch'] as bool,
      value: map['value'] as String,
    );
  }
}
