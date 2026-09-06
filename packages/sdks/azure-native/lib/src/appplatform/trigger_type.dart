import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of job trigger
enum TriggerType implements pulumi.PulumiEnum<String> {
  valueManual("Manual");

  const TriggerType(this.wireValue);
  @override
  final String wireValue;

  static TriggerType fromValue(String value) {
    for (final item in TriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerType value: $value');
  }
}
