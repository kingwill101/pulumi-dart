/// Represents a reviewer's decision for a given review
enum AccessReviewResult {
  valueApprove("Approve"),
  valueDeny("Deny"),
  valueNotReviewed("NotReviewed"),
  valueDontKnow("DontKnow"),
  valueNotNotified("NotNotified");

  const AccessReviewResult(this.wireValue);
  final String wireValue;

  static AccessReviewResult fromValue(String value) {
    for (final item in AccessReviewResult.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessReviewResult value: $value');
  }
}
