/// Overall update state of the stamp.
enum UpdateSummariesPropertiesState {
  valueUnknown("Unknown"),
  valueAppliedSuccessfully("AppliedSuccessfully"),
  valueUpdateAvailable("UpdateAvailable"),
  valueUpdateInProgress("UpdateInProgress"),
  valueUpdateFailed("UpdateFailed"),
  valueNeedsAttention("NeedsAttention"),
  valuePreparationInProgress("PreparationInProgress"),
  valuePreparationFailed("PreparationFailed");

  const UpdateSummariesPropertiesState(this.value);
  final String value;

  static UpdateSummariesPropertiesState fromValue(String value) {
    for (final item in UpdateSummariesPropertiesState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateSummariesPropertiesState value: $value');
  }
}

