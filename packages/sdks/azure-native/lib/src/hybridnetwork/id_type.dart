import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource reference arm id type.
enum IdType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueOpen("Open"),
  valueSecret("Secret");

  const IdType(this.wireValue);
  @override
  final String wireValue;

  static IdType fromValue(String value) {
    for (final item in IdType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdType value: $value');
  }
}
