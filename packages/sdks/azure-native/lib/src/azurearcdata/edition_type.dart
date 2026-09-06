import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server edition.
enum EditionType implements pulumi.PulumiEnum<String> {
  valueEvaluation("Evaluation"),
  valueEnterprise("Enterprise"),
  valueStandard("Standard"),
  valueWeb("Web"),
  valueDeveloper("Developer"),
  valueExpress("Express"),
  valueBusinessIntelligence("Business Intelligence");

  const EditionType(this.wireValue);
  @override
  final String wireValue;

  static EditionType fromValue(String value) {
    for (final item in EditionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EditionType value: $value');
  }
}
