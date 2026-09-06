import 'package:pulumi/pulumi.dart' as pulumi;

/// Polling type.
enum PollingType implements pulumi.PulumiEnum<String> {
  valuePull("Pull"),
  valuePush("Push");

  const PollingType(this.wireValue);
  @override
  final String wireValue;

  static PollingType fromValue(String value) {
    for (final item in PollingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PollingType value: $value');
  }
}
