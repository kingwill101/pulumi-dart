import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of maintenance for session host components.
enum SessionHostComponentUpdateType implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueScheduled("Scheduled");

  const SessionHostComponentUpdateType(this.wireValue);
  @override
  final String wireValue;

  static SessionHostComponentUpdateType fromValue(String value) {
    for (final item in SessionHostComponentUpdateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionHostComponentUpdateType value: $value');
  }
}
