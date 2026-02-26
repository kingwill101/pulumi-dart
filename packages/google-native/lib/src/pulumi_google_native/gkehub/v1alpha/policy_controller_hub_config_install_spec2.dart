/// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
enum PolicyControllerHubConfigInstallSpec2 {
  installSpecUnspecified("INSTALL_SPEC_UNSPECIFIED"),
  installSpecNotInstalled("INSTALL_SPEC_NOT_INSTALLED"),
  installSpecEnabled("INSTALL_SPEC_ENABLED"),
  installSpecSuspended("INSTALL_SPEC_SUSPENDED"),
  installSpecDetached("INSTALL_SPEC_DETACHED");

  const PolicyControllerHubConfigInstallSpec2(this.value);
  final String value;

  static PolicyControllerHubConfigInstallSpec2 fromValue(String value) {
    for (final item in PolicyControllerHubConfigInstallSpec2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PolicyControllerHubConfigInstallSpec2 value: $value');
  }
}
