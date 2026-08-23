/// The type of the recovery orchestration group action.
enum RecoveryGroupActionType {
  manualAction("ManualAction"),
  customRunbook("CustomRunbook");

  const RecoveryGroupActionType(this.wireValue);
  final String wireValue;

  static RecoveryGroupActionType fromValue(String value) {
    for (final item in RecoveryGroupActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryGroupActionType value: $value');
  }
}
