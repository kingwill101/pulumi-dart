// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupTag {
  /// Key.
  final pulumi.Input<String> key;
  /// Whether the tag is propagated to Amazon EC2 instances launched via this ASG.
  final pulumi.Input<bool> propagateAtLaunch;
  /// Value.
  final pulumi.Input<String> value;

  /// Creates a new [GetGroupTag].
  /// [key] Key.
  /// [propagateAtLaunch] Whether the tag is propagated to Amazon EC2 instances launched via this ASG.
  /// [value] Value.
  const GetGroupTag({
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
      key: pulumi.Input.fromValue(map['key'] as String),
      propagateAtLaunch: pulumi.Input.fromValue(map['propagateAtLaunch'] as bool),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

