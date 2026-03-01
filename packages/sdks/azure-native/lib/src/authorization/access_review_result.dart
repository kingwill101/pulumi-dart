/// Represents a reviewer's decision for a given review
enum AccessReviewResult {
  valueApprove("Approve"),
  valueDeny("Deny"),
  valueNotReviewed("NotReviewed"),
  valueDontKnow("DontKnow"),
  valueNotNotified("NotNotified");

  const AccessReviewResult(this.value);
  final String value;

  static AccessReviewResult fromValue(String value) {
    for (final item in AccessReviewResult.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessReviewResult value: $value');
  }
}

