import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether a VM will get shutdown when it has idled for a period of time.
enum ShutdownOnIdleMode implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueUserAbsence("UserAbsence"),
  valueLowUsage("LowUsage");

  const ShutdownOnIdleMode(this.wireValue);
  @override
  final String wireValue;

  static ShutdownOnIdleMode fromValue(String value) {
    for (final item in ShutdownOnIdleMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShutdownOnIdleMode value: $value');
  }
}
