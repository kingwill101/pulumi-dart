import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines the type of application which send the create user request. Default is legacy portal.
enum AppType implements pulumi.PulumiEnum<String> {
  valuePortal("portal"),
  valueDeveloperPortal("developerPortal");

  const AppType(this.wireValue);
  @override
  final String wireValue;

  static AppType fromValue(String value) {
    for (final item in AppType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppType value: $value');
  }
}
