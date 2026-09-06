import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to use.
enum ImpalaAuthenticationType implements pulumi.PulumiEnum<String> {
  anonymous("Anonymous"),
  sASLUsername("SASLUsername"),
  usernameAndPassword("UsernameAndPassword");

  const ImpalaAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static ImpalaAuthenticationType fromValue(String value) {
    for (final item in ImpalaAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImpalaAuthenticationType value: $value');
  }
}
