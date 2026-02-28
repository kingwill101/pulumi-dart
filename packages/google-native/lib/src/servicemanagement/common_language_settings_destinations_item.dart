enum CommonLanguageSettingsDestinationsItem {
  clientLibraryDestinationUnspecified("CLIENT_LIBRARY_DESTINATION_UNSPECIFIED"),
  github("GITHUB"),
  packageManager("PACKAGE_MANAGER");

  const CommonLanguageSettingsDestinationsItem(this.value);
  final String value;

  static CommonLanguageSettingsDestinationsItem fromValue(String value) {
    for (final item in CommonLanguageSettingsDestinationsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommonLanguageSettingsDestinationsItem value: $value');
  }
}

