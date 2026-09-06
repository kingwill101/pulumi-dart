import 'package:pulumi/pulumi.dart' as pulumi;

/// Update classification included in the software update configuration. A comma separated string with required values
enum WindowsUpdateClasses implements pulumi.PulumiEnum<String> {
  unclassified("Unclassified"),
  critical("Critical"),
  security("Security"),
  updateRollup("UpdateRollup"),
  featurePack("FeaturePack"),
  servicePack("ServicePack"),
  definition("Definition"),
  tools("Tools"),
  updates("Updates");

  const WindowsUpdateClasses(this.wireValue);
  @override
  final String wireValue;

  static WindowsUpdateClasses fromValue(String value) {
    for (final item in WindowsUpdateClasses.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsUpdateClasses value: $value');
  }
}
