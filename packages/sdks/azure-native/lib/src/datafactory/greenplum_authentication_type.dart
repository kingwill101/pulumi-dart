import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to use. Type: string. Only used for V2.
enum GreenplumAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic");

  const GreenplumAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static GreenplumAuthenticationType fromValue(String value) {
    for (final item in GreenplumAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GreenplumAuthenticationType value: $value');
  }
}
