import 'package:pulumi/pulumi.dart' as pulumi;

/// The redirect type the rule will use when redirecting traffic.
enum FrontDoorRedirectType implements pulumi.PulumiEnum<String> {
  moved("Moved"),
  found("Found"),
  temporaryRedirect("TemporaryRedirect"),
  permanentRedirect("PermanentRedirect");

  const FrontDoorRedirectType(this.wireValue);
  @override
  final String wireValue;

  static FrontDoorRedirectType fromValue(String value) {
    for (final item in FrontDoorRedirectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorRedirectType value: $value');
  }
}
