// ignore_for_file: unused_element, unnecessary_cast


class GetGroupTag {
  /// Key.
  final String key;
  /// Whether the tag is propagated to Amazon EC2 instances launched via this ASG.
  final bool propagateAtLaunch;
  /// Value.
  final String value;

  /// Creates a new [GetGroupTag].
  /// [key] Key.
  /// [propagateAtLaunch] Whether the tag is propagated to Amazon EC2 instances launched via this ASG.
  /// [value] Value.
  GetGroupTag({
    required this.key,
    required this.propagateAtLaunch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'propagateAtLaunch': propagateAtLaunch,
      'value': value,
    };
  }

  factory GetGroupTag.fromMap(Map<String, dynamic> map) {
    return GetGroupTag(
      key: map['key'] as String,
      propagateAtLaunch: map['propagateAtLaunch'] as bool,
      value: map['value'] as String,
    );
  }
}

