/// Authorization scheme type.
enum BuiltInAuthorizationScheme {
  valueDefault("Default"),
  valueOrganizationScope("OrganizationScope"),
  valueChannels("Channels"),
  valueCustom("Custom");

  const BuiltInAuthorizationScheme(this.value);
  final String value;

  static BuiltInAuthorizationScheme fromValue(String value) {
    for (final item in BuiltInAuthorizationScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuiltInAuthorizationScheme value: $value');
  }
}

