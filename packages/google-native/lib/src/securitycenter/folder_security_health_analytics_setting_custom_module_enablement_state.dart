/// The enablement state of the custom module.
enum FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  inherited("INHERITED");

  const FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState(this.value);
  final String value;

  static FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState fromValue(String value) {
    for (final item in FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState value: $value');
  }
}

