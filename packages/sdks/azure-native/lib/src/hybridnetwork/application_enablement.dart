import 'package:pulumi/pulumi.dart' as pulumi;

/// The application enablement.
enum ApplicationEnablement implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ApplicationEnablement(this.wireValue);
  @override
  final String wireValue;

  static ApplicationEnablement fromValue(String value) {
    for (final item in ApplicationEnablement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationEnablement value: $value');
  }
}
