// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Topic.
class TopicPubsubV1beta1aArgs {
  /// Name of the topic.
  final pulumi.Input<String>? name;

  TopicPubsubV1beta1aArgs({
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

  factory TopicPubsubV1beta1aArgs.fromMap(Map<String, dynamic> map) {
    return TopicPubsubV1beta1aArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
