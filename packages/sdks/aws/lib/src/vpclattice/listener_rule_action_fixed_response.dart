// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionFixedResponse {
  /// HTTP response code.
  final pulumi.Input<int> statusCode;

  /// Creates a new [ListenerRuleActionFixedResponse].
  /// [statusCode] HTTP response code.
  const ListenerRuleActionFixedResponse({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
    };
  }

  factory ListenerRuleActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionFixedResponse(
      statusCode: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['statusCode'])),
    );
  }
}
