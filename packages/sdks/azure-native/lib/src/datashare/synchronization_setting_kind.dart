import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of synchronization setting.
enum SynchronizationSettingKind implements pulumi.PulumiEnum<String> {
  valueScheduleBased("ScheduleBased");

  const SynchronizationSettingKind(this.wireValue);
  @override
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
