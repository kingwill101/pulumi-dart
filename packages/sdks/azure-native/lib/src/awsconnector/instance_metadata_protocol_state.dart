import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceMetadataProtocolState implements pulumi.PulumiEnum<String> {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataProtocolState(this.wireValue);
  @override
  final String wireValue;

  static InstanceMetadataProtocolState fromValue(String value) {
    for (final item in InstanceMetadataProtocolState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataProtocolState value: $value');
  }
}
