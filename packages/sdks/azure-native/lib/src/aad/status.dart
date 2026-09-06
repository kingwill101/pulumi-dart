import 'package:pulumi/pulumi.dart' as pulumi;

/// Status for individual validator after running diagnostics.
enum Status implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueRunning("Running"),
  valueOK("OK"),
  valueFailure("Failure"),
  valueWarning("Warning"),
  valueSkipped("Skipped");

  const Status(this.wireValue);
  @override
  final String wireValue;

  static Status fromValue(String value) {
    for (final item in Status.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Status value: $value');
  }
}
