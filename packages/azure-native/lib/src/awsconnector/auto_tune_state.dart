/// Property value
enum AutoTuneState {
  dISABLED("DISABLED"),
  dISABLEDANDROLLBACKCOMPLETE("DISABLED_AND_ROLLBACK_COMPLETE"),
  dISABLEDANDROLLBACKERROR("DISABLED_AND_ROLLBACK_ERROR"),
  dISABLEDANDROLLBACKINPROGRESS("DISABLED_AND_ROLLBACK_IN_PROGRESS"),
  dISABLEDANDROLLBACKSCHEDULED("DISABLED_AND_ROLLBACK_SCHEDULED"),
  dISABLEINPROGRESS("DISABLE_IN_PROGRESS"),
  eNABLED("ENABLED"),
  eNABLEINPROGRESS("ENABLE_IN_PROGRESS"),
  eRROR("ERROR");

  const AutoTuneState(this.value);
  final String value;

  static AutoTuneState fromValue(String value) {
    for (final item in AutoTuneState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoTuneState value: $value');
  }
}

