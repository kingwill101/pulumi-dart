import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ExportSourceType implements pulumi.PulumiEnum<String> {
  cLUSTER("CLUSTER"),
  sNAPSHOT("SNAPSHOT");

  const ExportSourceType(this.wireValue);
  @override
  final String wireValue;

  static ExportSourceType fromValue(String value) {
    for (final item in ExportSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExportSourceType value: $value');
  }
}
