import 'package:pulumi/pulumi.dart' as pulumi;

/// Isolation mode for the managed network of a machine learning workspace.
enum IsolationMode implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  allowInternetOutbound("AllowInternetOutbound"),
  allowOnlyApprovedOutbound("AllowOnlyApprovedOutbound");

  const IsolationMode(this.wireValue);
  @override
  final String wireValue;

  static IsolationMode fromValue(String value) {
    for (final item in IsolationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsolationMode value: $value');
  }
}
