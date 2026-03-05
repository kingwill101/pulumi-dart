/// Binding mode of volumes: Immediate, WaitForFirstConsumer
enum VolumeBindingMode {
  immediate("Immediate"),
  waitForFirstConsumer("WaitForFirstConsumer");

  const VolumeBindingMode(this.wireValue);
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

