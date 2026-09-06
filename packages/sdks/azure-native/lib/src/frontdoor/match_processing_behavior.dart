import 'package:pulumi/pulumi.dart' as pulumi;

/// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
enum MatchProcessingBehavior implements pulumi.PulumiEnum<String> {
  continue_("Continue"),
  stop("Stop");

  const MatchProcessingBehavior(this.wireValue);
  @override
  final String wireValue;

  static MatchProcessingBehavior fromValue(String value) {
    for (final item in MatchProcessingBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MatchProcessingBehavior value: $value');
  }
}
