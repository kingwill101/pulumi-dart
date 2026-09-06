import 'package:pulumi/pulumi.dart' as pulumi;

/// Configures which HTTP method to use to probe the backends defined under backendPools.
enum FrontDoorHealthProbeMethod implements pulumi.PulumiEnum<String> {
  gET("GET"),
  hEAD("HEAD");

  const FrontDoorHealthProbeMethod(this.wireValue);
  @override
  final String wireValue;

  static FrontDoorHealthProbeMethod fromValue(String value) {
    for (final item in FrontDoorHealthProbeMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorHealthProbeMethod value: $value');
  }
}
