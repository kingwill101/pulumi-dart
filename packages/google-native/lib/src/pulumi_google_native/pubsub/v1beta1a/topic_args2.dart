// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Topic.
class TopicArgs2 {
  /// Name of the topic.
  final Input<String>? name;

  TopicArgs2({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory TopicArgs2.fromMap(Map<String, dynamic> map) {
    return TopicArgs2(
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
