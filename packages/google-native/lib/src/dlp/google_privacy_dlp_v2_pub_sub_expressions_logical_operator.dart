/// The operator to apply to the collection of conditions.
enum GooglePrivacyDlpV2PubSubExpressionsLogicalOperator {
  logicalOperatorUnspecified("LOGICAL_OPERATOR_UNSPECIFIED"),
  or("OR"),
  and("AND");

  const GooglePrivacyDlpV2PubSubExpressionsLogicalOperator(this.value);
  final String value;

  static GooglePrivacyDlpV2PubSubExpressionsLogicalOperator fromValue(
      String value) {
    for (final item
        in GooglePrivacyDlpV2PubSubExpressionsLogicalOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GooglePrivacyDlpV2PubSubExpressionsLogicalOperator value: $value');
  }
}
