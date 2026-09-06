import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes if policy managed rules will inspect the request body content.
enum PolicyRequestBodyCheck implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const PolicyRequestBodyCheck(this.wireValue);
  @override
  final String wireValue;

  static PolicyRequestBodyCheck fromValue(String value) {
    for (final item in PolicyRequestBodyCheck.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyRequestBodyCheck value: $value');
  }
}
