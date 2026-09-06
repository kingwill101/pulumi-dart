import 'package:pulumi/pulumi.dart' as pulumi;

/// The original value of the network features type available to the volume at the time it was created.
enum NetworkFeatures implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueBasicStandard("Basic_Standard"),
  valueStandardBasic("Standard_Basic");

  const NetworkFeatures(this.wireValue);
  @override
  final String wireValue;

  static NetworkFeatures fromValue(String value) {
    for (final item in NetworkFeatures.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFeatures value: $value');
  }
}
