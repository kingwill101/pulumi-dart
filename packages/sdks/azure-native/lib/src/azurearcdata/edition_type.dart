/// SQL Server edition.
enum EditionType {
  valueEvaluation("Evaluation"),
  valueEnterprise("Enterprise"),
  valueStandard("Standard"),
  valueWeb("Web"),
  valueDeveloper("Developer"),
  valueExpress("Express"),
  valueBusinessIntelligence("Business Intelligence");

  const EditionType(this.wireValue);
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
