import 'package:pulumi/pulumi.dart' as pulumi;

/// The operating system type required for the run.
enum OS implements pulumi.PulumiEnum<String> {
  valueWindows("Windows"),
  valueLinux("Linux");

  const OS(this.wireValue);
  @override
  final String wireValue;

  static OS fromValue(String value) {
    for (final item in OS.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OS value: $value');
  }
}
