import 'package:pulumi/pulumi.dart' as pulumi;

/// Has type of the column to group.
enum ReportColumnType implements pulumi.PulumiEnum<String> {
  valueTag("Tag"),
  valueDimension("Dimension");

  const ReportColumnType(this.wireValue);
  @override
  final String wireValue;

  static ReportColumnType fromValue(String value) {
    for (final item in ReportColumnType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportColumnType value: $value');
  }
}
