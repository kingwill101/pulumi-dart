import 'package:pulumi/pulumi.dart' as pulumi;

/// AutoRebuild setting for the derived image
enum AutoRebuildSetting implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  onBaseImageUpdate("OnBaseImageUpdate");

  const AutoRebuildSetting(this.wireValue);
  @override
  final String wireValue;

  static AutoRebuildSetting fromValue(String value) {
    for (final item in AutoRebuildSetting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoRebuildSetting value: $value');
  }
}
