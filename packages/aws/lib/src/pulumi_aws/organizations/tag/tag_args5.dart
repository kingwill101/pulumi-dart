// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Tag.
class TagArgs5 {
  /// Tag name.
  final Input<String> key;

  /// Id of the Organizations resource to tag.
  final Input<String> resourceId;

  /// Tag value.
  final Input<String> value;

  TagArgs5({
    required this.key,
    required this.resourceId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['resourceId'] = resourceId;
    map['value'] = value;
    return map;
  }

  factory TagArgs5.fromMap(Map<String, dynamic> map) {
    return TagArgs5(
      key: Input.asInput<String>(map['key']),
      resourceId: Input.asInput<String>(map['resourceId']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
