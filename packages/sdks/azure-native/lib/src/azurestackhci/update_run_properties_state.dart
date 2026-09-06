import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the update run.
enum UpdateRunPropertiesState implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueSucceeded("Succeeded"),
  valueInProgress("InProgress"),
  valueFailed("Failed");

  const UpdateRunPropertiesState(this.wireValue);
  @override
  final String wireValue;

  static UpdateRunPropertiesState fromValue(String value) {
    for (final item in UpdateRunPropertiesState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateRunPropertiesState value: $value');
  }
}
