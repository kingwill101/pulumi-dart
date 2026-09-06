import 'package:pulumi/pulumi.dart' as pulumi;

/// This specifies the behavior for the autoReview feature when an access review completes.
enum DefaultDecisionType implements pulumi.PulumiEnum<String> {
  approve("Approve"),
  deny("Deny"),
  recommendation("Recommendation");

  const DefaultDecisionType(this.wireValue);
  @override
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
