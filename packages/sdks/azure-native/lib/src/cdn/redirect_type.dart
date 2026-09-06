import 'package:pulumi/pulumi.dart' as pulumi;

/// The redirect type the rule will use when redirecting traffic.
enum RedirectType implements pulumi.PulumiEnum<String> {
  moved("Moved"),
  found("Found"),
  temporaryRedirect("TemporaryRedirect"),
  permanentRedirect("PermanentRedirect");

  const RedirectType(this.wireValue);
  @override
  final String wireValue;

  static RedirectType fromValue(String value) {
    for (final item in RedirectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedirectType value: $value');
  }
}
