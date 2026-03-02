// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TagTag {
  /// Tag name.
  final pulumi.Input<String> key;
  /// Whether to propagate the tags to instances launched by the ASG.
  final pulumi.Input<bool> propagateAtLaunch;
  /// Tag value.
  final pulumi.Input<String> value;

  /// Creates a new [TagTag].
  /// [key] Tag name.
  /// [propagateAtLaunch] Whether to propagate the tags to instances launched by the ASG.
  /// [value] Tag value.
  TagTag({
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

  factory TagTag.fromMap(Map<String, dynamic> map) {
    return TagTag(
      key: (map['key'] as String).input(),
      propagateAtLaunch: (map['propagateAtLaunch'] as bool).input(),
      value: (map['value'] as String).input(),
    );
  }
}

