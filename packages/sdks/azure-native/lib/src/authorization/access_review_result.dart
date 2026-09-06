import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a reviewer's decision for a given review
enum AccessReviewResult implements pulumi.PulumiEnum<String> {
  approve("Approve"),
  deny("Deny"),
  notReviewed("NotReviewed"),
  dontKnow("DontKnow"),
  notNotified("NotNotified");

  const AccessReviewResult(this.wireValue);
  @override
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
