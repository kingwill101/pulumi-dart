import 'package:pulumi/pulumi.dart' as pulumi;

/// Binding mode of volumes: Immediate, WaitForFirstConsumer
enum VolumeBindingMode implements pulumi.PulumiEnum<String> {
  immediate("Immediate"),
  waitForFirstConsumer("WaitForFirstConsumer");

  const VolumeBindingMode(this.wireValue);
  @override
  final String wireValue;

  static VolumeBindingMode fromValue(String value) {
    for (final item in VolumeBindingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeBindingMode value: $value');
  }
}
