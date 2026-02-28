/// The enablement state of the custom module.
enum ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  inherited("INHERITED");

  const ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState(this.value);
  final String value;

  static ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState fromValue(String value) {
    for (final item in ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState value: $value');
  }
}

