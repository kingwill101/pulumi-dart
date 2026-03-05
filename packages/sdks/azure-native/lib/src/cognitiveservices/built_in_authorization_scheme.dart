/// Authorization scheme type.
enum BuiltInAuthorizationScheme {
  valueDefault("Default"),
  valueOrganizationScope("OrganizationScope"),
  valueChannels("Channels"),
  valueCustom("Custom");

  const BuiltInAuthorizationScheme(this.wireValue);
  final String wireValue;

  static BuiltInAuthorizationScheme fromValue(String value) {
    for (final item in BuiltInAuthorizationScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuiltInAuthorizationScheme value: $value');
  }
}

