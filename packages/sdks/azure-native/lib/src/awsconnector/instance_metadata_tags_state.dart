import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceMetadataTagsState implements pulumi.PulumiEnum<String> {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataTagsState(this.wireValue);
  @override
  final String wireValue;

  static InstanceMetadataTagsState fromValue(String value) {
    for (final item in InstanceMetadataTagsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataTagsState value: $value');
  }
}
