import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the export. Note that 'Usage' is equivalent to 'ActualCost' and is applicable to exports that do not yet provide data for charges or amortization for service reservations.
enum ExportType implements pulumi.PulumiEnum<String> {
  valueUsage("Usage"),
  valueActualCost("ActualCost"),
  valueAmortizedCost("AmortizedCost");

  const ExportType(this.wireValue);
  @override
  final String wireValue;

  static ExportType fromValue(String value) {
    for (final item in ExportType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExportType value: $value');
  }
}
