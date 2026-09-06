import 'package:pulumi/pulumi.dart' as pulumi;

/// Overall update state of the stamp.
enum UpdateSummariesPropertiesState implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAppliedSuccessfully("AppliedSuccessfully"),
  valueUpdateAvailable("UpdateAvailable"),
  valueUpdateInProgress("UpdateInProgress"),
  valueUpdateFailed("UpdateFailed"),
  valueNeedsAttention("NeedsAttention"),
  valuePreparationInProgress("PreparationInProgress"),
  valuePreparationFailed("PreparationFailed");

  const UpdateSummariesPropertiesState(this.wireValue);
  @override
  final String wireValue;

  static UpdateSummariesPropertiesState fromValue(String value) {
    for (final item in UpdateSummariesPropertiesState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateSummariesPropertiesState value: $value');
  }
}
