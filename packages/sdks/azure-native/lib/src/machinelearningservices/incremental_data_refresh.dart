import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether to enable incremental data refresh.
enum IncrementalDataRefresh implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const IncrementalDataRefresh(this.wireValue);
  @override
  final String wireValue;

  static IncrementalDataRefresh fromValue(String value) {
    for (final item in IncrementalDataRefresh.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncrementalDataRefresh value: $value');
  }
}
