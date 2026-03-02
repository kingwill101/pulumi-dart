// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleHttpHttpHeader {
  /// The name of the HTTP header.
  final pulumi.Input<String> key;
  /// The value of the HTTP header.
  final pulumi.Input<String> value;

  /// Creates a new [TopicRuleHttpHttpHeader].
  /// [key] The name of the HTTP header.
  /// [value] The value of the HTTP header.
  TopicRuleHttpHttpHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TopicRuleHttpHttpHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleHttpHttpHeader(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

