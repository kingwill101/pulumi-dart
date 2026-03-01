/// Determines the type of application which send the create user request. Default is legacy portal.
enum AppType {
  valuePortal("portal"),
  valueDeveloperPortal("developerPortal");

  const AppType(this.value);
  final String value;

  static AppType fromValue(String value) {
    for (final item in AppType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppType value: $value');
  }
}

