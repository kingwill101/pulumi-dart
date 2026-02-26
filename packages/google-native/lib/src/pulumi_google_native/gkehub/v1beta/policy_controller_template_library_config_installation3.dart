/// Configures the manner in which the template library is installed on the cluster.
enum PolicyControllerTemplateLibraryConfigInstallation3 {
  installationUnspecified("INSTALLATION_UNSPECIFIED"),
  notInstalled("NOT_INSTALLED"),
  all("ALL");

  const PolicyControllerTemplateLibraryConfigInstallation3(this.value);
  final String value;

  static PolicyControllerTemplateLibraryConfigInstallation3 fromValue(
      String value) {
    for (final item
        in PolicyControllerTemplateLibraryConfigInstallation3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PolicyControllerTemplateLibraryConfigInstallation3 value: $value');
  }
}
