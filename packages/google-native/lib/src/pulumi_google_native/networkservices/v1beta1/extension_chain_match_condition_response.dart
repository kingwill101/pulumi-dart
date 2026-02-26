// ignore_for_file: unused_element, unnecessary_cast

/// Conditions under which this chain is invoked for a request.
class ExtensionChainMatchConditionResponse {
  /// A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  final String celExpression;

  ExtensionChainMatchConditionResponse({
    required this.celExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['celExpression'] = celExpression;
    return map;
  }

  factory ExtensionChainMatchConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return ExtensionChainMatchConditionResponse(
      celExpression: map['celExpression'] as String,
    );
  }
}
