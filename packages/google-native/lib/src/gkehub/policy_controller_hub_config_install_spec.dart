/// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
enum PolicyControllerHubConfigInstallSpec {
  installSpecUnspecified("INSTALL_SPEC_UNSPECIFIED"),
  installSpecNotInstalled("INSTALL_SPEC_NOT_INSTALLED"),
  installSpecEnabled("INSTALL_SPEC_ENABLED"),
  installSpecSuspended("INSTALL_SPEC_SUSPENDED"),
  installSpecDetached("INSTALL_SPEC_DETACHED");

  const PolicyControllerHubConfigInstallSpec(this.value);
  final String value;

  static PolicyControllerHubConfigInstallSpec fromValue(String value) {
    for (final item in PolicyControllerHubConfigInstallSpec.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PolicyControllerHubConfigInstallSpec value: $value',
    );
  }
}
