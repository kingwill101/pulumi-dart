import 'package:pulumi/pulumi.dart' as pulumi;

/// Destination port behavior.
enum DestinationPortBehavior implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueListenIfAvailable("ListenIfAvailable");

  const DestinationPortBehavior(this.wireValue);
  @override
  final String wireValue;

  static DestinationPortBehavior fromValue(String value) {
    for (final item in DestinationPortBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationPortBehavior value: $value');
  }
}
