// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionHttpHttpHeader {
  /// The name of the HTTP header.
  final pulumi.Input<String> key;
  /// The value of the HTTP header.
  final pulumi.Input<String> value;

  /// Creates a new [TopicRuleErrorActionHttpHttpHeader].
  /// [key] The name of the HTTP header.
  /// [value] The value of the HTTP header.
  TopicRuleErrorActionHttpHttpHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TopicRuleErrorActionHttpHttpHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionHttpHttpHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

