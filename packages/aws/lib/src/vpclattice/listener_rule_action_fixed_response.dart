// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionFixedResponse {
  /// The HTTP response code.
  final int statusCode;

  /// Creates a new [ListenerRuleActionFixedResponse].
  /// [statusCode] The HTTP response code.
  ListenerRuleActionFixedResponse({required this.statusCode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'statusCode': statusCode};
  }

  factory ListenerRuleActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionFixedResponse(
      statusCode: map['statusCode'] as int,
    );
  }
}
