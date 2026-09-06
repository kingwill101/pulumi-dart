import 'package:pulumi/pulumi.dart' as pulumi;

enum AutomaticClusterUpdateValue implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const AutomaticClusterUpdateValue(this.wireValue);
  @override
  final String wireValue;

  static AutomaticClusterUpdateValue fromValue(String value) {
    for (final item in AutomaticClusterUpdateValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomaticClusterUpdateValue value: $value');
  }
}
