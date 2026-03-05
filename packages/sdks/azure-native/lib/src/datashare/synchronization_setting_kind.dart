/// Kind of synchronization setting.
enum SynchronizationSettingKind {
  valueScheduleBased("ScheduleBased");

  const SynchronizationSettingKind(this.wireValue);
  final String wireValue;

  static SynchronizationSettingKind fromValue(String value) {
    for (final item in SynchronizationSettingKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SynchronizationSettingKind value: $value');
  }
}

