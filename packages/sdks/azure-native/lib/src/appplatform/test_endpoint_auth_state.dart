import 'package:pulumi/pulumi.dart' as pulumi;

/// State of test endpoint auth.
enum TestEndpointAuthState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TestEndpointAuthState(this.wireValue);
  @override
  final String wireValue;

  static TestEndpointAuthState fromValue(String value) {
    for (final item in TestEndpointAuthState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestEndpointAuthState value: $value');
  }
}
