import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceMetadataOptionsState implements pulumi.PulumiEnum<String> {
  applied("applied"),
  pending("pending");

  const InstanceMetadataOptionsState(this.wireValue);
  @override
  final String wireValue;

  static InstanceMetadataOptionsState fromValue(String value) {
    for (final item in InstanceMetadataOptionsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataOptionsState value: $value');
  }
}
