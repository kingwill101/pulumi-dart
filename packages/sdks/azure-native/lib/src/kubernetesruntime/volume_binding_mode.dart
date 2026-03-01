/// Binding mode of volumes: Immediate, WaitForFirstConsumer
enum VolumeBindingMode {
  immediate("Immediate"),
  waitForFirstConsumer("WaitForFirstConsumer");

  const VolumeBindingMode(this.value);
  final String value;

  static VolumeBindingMode fromValue(String value) {
    for (final item in VolumeBindingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeBindingMode value: $value');
  }
}

