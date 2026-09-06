import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines whether this Environment Type can be used in this Project.
enum EnvironmentTypeEnableStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnvironmentTypeEnableStatus(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentTypeEnableStatus fromValue(String value) {
    for (final item in EnvironmentTypeEnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentTypeEnableStatus value: $value');
  }
}
