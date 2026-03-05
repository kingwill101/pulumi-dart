/// This specifies the behavior for the autoReview feature when an access review completes.
enum DefaultDecisionType {
  valueApprove("Approve"),
  valueDeny("Deny"),
  valueRecommendation("Recommendation");

  const DefaultDecisionType(this.wireValue);
  final String wireValue;

  static DefaultDecisionType fromValue(String value) {
    for (final item in DefaultDecisionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultDecisionType value: $value');
  }
}

