import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines how the SLI is evaluated—either based on request counts or time windows.
enum EvaluationType implements pulumi.PulumiEnum<String> {
  windowBased("WindowBased"),
  requestBased("RequestBased");

  const EvaluationType(this.wireValue);
  @override
  final String wireValue;

  static EvaluationType fromValue(String value) {
    for (final item in EvaluationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvaluationType value: $value');
  }
}
