import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of error management to use for the mapping.
enum ErrorManagementTypes implements pulumi.PulumiEnum<String> {
  valueRejectAndContinue("RejectAndContinue"),
  valueStopImport("StopImport"),
  valueRejectUntilLimit("RejectUntilLimit");

  const ErrorManagementTypes(this.wireValue);
  @override
  final String wireValue;

  static ErrorManagementTypes fromValue(String value) {
    for (final item in ErrorManagementTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ErrorManagementTypes value: $value');
  }
}
