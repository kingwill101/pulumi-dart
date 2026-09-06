import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of threshold criteria
enum CriterionType implements pulumi.PulumiEnum<String> {
  staticThresholdCriterion("StaticThresholdCriterion"),
  dynamicThresholdCriterion("DynamicThresholdCriterion");

  const CriterionType(this.wireValue);
  @override
  final String wireValue;

  static CriterionType fromValue(String value) {
    for (final item in CriterionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CriterionType value: $value');
  }
}
