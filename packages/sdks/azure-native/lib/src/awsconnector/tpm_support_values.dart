import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum TpmSupportValues implements pulumi.PulumiEnum<String> {
  v20("v2.0");

  const TpmSupportValues(this.wireValue);
  @override
  final String wireValue;

  static TpmSupportValues fromValue(String value) {
    for (final item in TpmSupportValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TpmSupportValues value: $value');
  }
}
