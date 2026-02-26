/// Whether MultiFactor Authentication has been enabled for this project.
enum GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState {
  stateUnspecified("STATE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED"),
  mandatory("MANDATORY");

  const GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState(this.value);
  final String value;

  static GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState fromValue(
      String value) {
    for (final item
        in GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfigState value: $value');
  }
}
