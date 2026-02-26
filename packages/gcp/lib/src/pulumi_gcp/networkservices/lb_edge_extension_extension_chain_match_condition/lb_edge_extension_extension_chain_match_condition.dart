// ignore_for_file: unused_element, unnecessary_cast

class LbEdgeExtensionExtensionChainMatchCondition {
  /// A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed.
  final String celExpression;

  LbEdgeExtensionExtensionChainMatchCondition({
    required this.celExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['celExpression'] = celExpression;
    return map;
  }

  factory LbEdgeExtensionExtensionChainMatchCondition.fromMap(
      Map<String, dynamic> map) {
    return LbEdgeExtensionExtensionChainMatchCondition(
      celExpression: map['celExpression'] as String,
    );
  }
}
