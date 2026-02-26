// ignore_for_file: unused_element, unnecessary_cast

class GetGroupTag {
  /// Key.
  final String key;

  /// Whether the tag is propagated to Amazon EC2 instances launched via this ASG.
  final bool propagateAtLaunch;

  /// Value.
  final String value;

  GetGroupTag({
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

  factory GetGroupTag.fromMap(Map<String, dynamic> map) {
    return GetGroupTag(
      key: map['key'] as String,
      propagateAtLaunch: map['propagateAtLaunch'] as bool,
      value: map['value'] as String,
    );
  }
}
