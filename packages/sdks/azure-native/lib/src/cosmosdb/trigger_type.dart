import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the Trigger
enum TriggerType implements pulumi.PulumiEnum<String> {
  valuePre("Pre"),
  valuePost("Post");

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
