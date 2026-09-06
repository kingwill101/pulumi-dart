import 'package:pulumi/pulumi.dart' as pulumi;

/// Property that determines whether a given availability replica can run in synchronous-commit mode
enum ArcSqlServerAvailabilityMode implements pulumi.PulumiEnum<String> {
  valueSYNCHRONOUSCOMMIT("SYNCHRONOUS_COMMIT"),
  valueASYNCHRONOUSCOMMIT("ASYNCHRONOUS_COMMIT");

  const ArcSqlServerAvailabilityMode(this.wireValue);
  @override
  final String wireValue;

  static ArcSqlServerAvailabilityMode fromValue(String value) {
    for (final item in ArcSqlServerAvailabilityMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArcSqlServerAvailabilityMode value: $value');
  }
}
