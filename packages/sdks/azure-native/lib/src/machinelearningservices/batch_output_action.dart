import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to determine how batch inferencing will handle output
enum BatchOutputAction implements pulumi.PulumiEnum<String> {
  summaryOnly("SummaryOnly"),
  appendRow("AppendRow");

  const BatchOutputAction(this.wireValue);
  @override
  final String wireValue;

  static BatchOutputAction fromValue(String value) {
    for (final item in BatchOutputAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchOutputAction value: $value');
  }
}
