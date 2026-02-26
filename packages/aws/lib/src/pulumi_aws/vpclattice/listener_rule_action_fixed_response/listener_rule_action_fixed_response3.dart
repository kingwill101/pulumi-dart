// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionFixedResponse3 {
  /// The HTTP response code.
  final int statusCode;

  ListenerRuleActionFixedResponse3({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    return map;
  }

  factory ListenerRuleActionFixedResponse3.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionFixedResponse3(
      statusCode: map['statusCode'] as int,
    );
  }
}
