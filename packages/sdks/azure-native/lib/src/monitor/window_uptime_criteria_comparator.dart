import 'package:pulumi/pulumi.dart' as pulumi;

/// Comparison operator used for uptime evaluation.
enum WindowUptimeCriteriaComparator implements pulumi.PulumiEnum<String> {
  lessThan("lt"),
  greaterThan("gt"),
  lessThanOrEqual("lte"),
  greaterThanOrEqual("gte");

  const WindowUptimeCriteriaComparator(this.wireValue);
  @override
  final String wireValue;

  static WindowUptimeCriteriaComparator fromValue(String value) {
    for (final item in WindowUptimeCriteriaComparator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowUptimeCriteriaComparator value: $value');
  }
}
