import 'package:pulumi/pulumi.dart' as pulumi;

/// The verbosity level applied to traces emitted by trace policies.
enum Verbosity implements pulumi.PulumiEnum<String> {
  valueVerbose("verbose"),
  valueInformation("information"),
  valueError("error");

  const Verbosity(this.wireValue);
  @override
  final String wireValue;

  static Verbosity fromValue(String value) {
    for (final item in Verbosity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Verbosity value: $value');
  }
}
