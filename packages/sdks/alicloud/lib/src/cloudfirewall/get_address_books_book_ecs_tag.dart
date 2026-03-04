// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddressBooksBookEcsTag {
  /// The key of ECS tag that to be matched.
  final pulumi.Input<String> tagKey;

  /// The value of ECS tag that to be matched.
  final pulumi.Input<String> tagValue;

  /// Creates a new [GetAddressBooksBookEcsTag].
  /// [tagKey] The key of ECS tag that to be matched.
  /// [tagValue] The value of ECS tag that to be matched.
  GetAddressBooksBookEcsTag({required this.tagKey, required this.tagValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tagKey': tagKey, 'tagValue': tagValue};
  }

  factory GetAddressBooksBookEcsTag.fromMap(Map<String, dynamic> map) {
    return GetAddressBooksBookEcsTag(
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
      tagValue: pulumi.Input.fromValue(map['tagValue'] as String),
    );
  }
}
