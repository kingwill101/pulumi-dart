/// Configures the manner in which the template library is installed on the cluster.
enum PolicyControllerTemplateLibraryConfigInstallation2 {
  installationUnspecified("INSTALLATION_UNSPECIFIED"),
  notInstalled("NOT_INSTALLED"),
  all("ALL");

  const PolicyControllerTemplateLibraryConfigInstallation2(this.value);
  final String value;

  static PolicyControllerTemplateLibraryConfigInstallation2 fromValue(
      String value) {
    for (final item
        in PolicyControllerTemplateLibraryConfigInstallation2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PolicyControllerTemplateLibraryConfigInstallation2 value: $value');
  }
}
