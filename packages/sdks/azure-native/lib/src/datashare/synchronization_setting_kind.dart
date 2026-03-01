/// Kind of synchronization setting.
enum SynchronizationSettingKind {
  valueScheduleBased("ScheduleBased");

  const SynchronizationSettingKind(this.value);
  final String value;

  static SynchronizationSettingKind fromValue(String value) {
    for (final item in SynchronizationSettingKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SynchronizationSettingKind value: $value');
  }
}

