// ignore_for_file: unused_element, unnecessary_cast

class LbTrafficExtensionExtensionChainMatchCondition {
  /// A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  final String celExpression;

  /// Creates a new [LbTrafficExtensionExtensionChainMatchCondition].
  /// [celExpression] A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  LbTrafficExtensionExtensionChainMatchCondition({
    required this.celExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['celExpression'] = celExpression;
    return map;
  }

  factory LbTrafficExtensionExtensionChainMatchCondition.fromMap(
      Map<String, dynamic> map) {
    return LbTrafficExtensionExtensionChainMatchCondition(
      celExpression: map['celExpression'] as String,
    );
  }
}
