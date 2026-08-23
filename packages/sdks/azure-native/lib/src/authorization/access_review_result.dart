/// Represents a reviewer's decision for a given review
enum AccessReviewResult {
  approve("Approve"),
  deny("Deny"),
  notReviewed("NotReviewed"),
  dontKnow("DontKnow"),
  notNotified("NotNotified");

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
