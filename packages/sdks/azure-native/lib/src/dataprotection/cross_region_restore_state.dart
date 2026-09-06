import 'package:pulumi/pulumi.dart' as pulumi;

/// CrossRegionRestore state
enum CrossRegionRestoreState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const CrossRegionRestoreState(this.wireValue);
  @override
  final String wireValue;

  static CrossRegionRestoreState fromValue(String value) {
    for (final item in CrossRegionRestoreState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossRegionRestoreState value: $value');
  }
}
