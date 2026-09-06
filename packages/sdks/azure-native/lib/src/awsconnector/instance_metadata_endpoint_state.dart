import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceMetadataEndpointState implements pulumi.PulumiEnum<String> {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataEndpointState(this.wireValue);
  @override
  final String wireValue;

  static InstanceMetadataEndpointState fromValue(String value) {
    for (final item in InstanceMetadataEndpointState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataEndpointState value: $value');
  }
}
