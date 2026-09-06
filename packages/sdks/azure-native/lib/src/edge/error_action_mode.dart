import 'package:pulumi/pulumi.dart' as pulumi;

/// Error action mode
enum ErrorActionMode implements pulumi.PulumiEnum<String> {
  stopOnAnyFailure("stopOnAnyFailure"),
  stopOnNFailures("stopOnNFailures"),
  silentlyContinue("silentlyContinue");

  const ErrorActionMode(this.wireValue);
  @override
  final String wireValue;

  static ErrorActionMode fromValue(String value) {
    for (final item in ErrorActionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ErrorActionMode value: $value');
  }
}
