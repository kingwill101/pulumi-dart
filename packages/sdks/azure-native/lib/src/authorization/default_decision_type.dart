/// This specifies the behavior for the autoReview feature when an access review completes.
enum DefaultDecisionType {
  valueApprove("Approve"),
  valueDeny("Deny"),
  valueRecommendation("Recommendation");

  const DefaultDecisionType(this.value);
  final String value;

  static DefaultDecisionType fromValue(String value) {
    for (final item in DefaultDecisionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultDecisionType value: $value');
  }
}

