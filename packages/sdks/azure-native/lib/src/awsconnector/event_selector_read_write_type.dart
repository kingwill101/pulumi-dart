import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify if you want your trail to log read-only events, write-only events, or all. For example, the EC2 GetConsoleOutput is a read-only API operation and RunInstances is a write-only API operation.
enum EventSelectorReadWriteType implements pulumi.PulumiEnum<String> {
  all("All"),
  readOnly("ReadOnly"),
  writeOnly("WriteOnly");

  const EventSelectorReadWriteType(this.wireValue);
  @override
  final String wireValue;

  static EventSelectorReadWriteType fromValue(String value) {
    for (final item in EventSelectorReadWriteType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSelectorReadWriteType value: $value');
  }
}
