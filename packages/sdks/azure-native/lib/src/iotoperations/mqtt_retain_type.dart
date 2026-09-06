import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether or not to keep the retain setting.
enum MqttRetainType implements pulumi.PulumiEnum<String> {
  keep("Keep"),
  never_("Never");

  const MqttRetainType(this.wireValue);
  @override
  final String wireValue;

  static MqttRetainType fromValue(String value) {
    for (final item in MqttRetainType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttRetainType value: $value');
  }
}
