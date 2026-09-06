import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies for what type of messages sampling settings should not apply.
enum AlwaysLog implements pulumi.PulumiEnum<String> {
  valueAllErrors("allErrors");

  const AlwaysLog(this.wireValue);
  @override
  final String wireValue;

  static AlwaysLog fromValue(String value) {
    for (final item in AlwaysLog.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlwaysLog value: $value');
  }
}
