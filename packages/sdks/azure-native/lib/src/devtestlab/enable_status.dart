import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the schedule (i.e. Enabled, Disabled)
enum EnableStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const EnableStatus(this.wireValue);
  @override
  final String wireValue;

  static EnableStatus fromValue(String value) {
    for (final item in EnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableStatus value: $value');
  }
}
