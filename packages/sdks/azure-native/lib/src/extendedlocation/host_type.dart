import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of host the Custom Locations is referencing (Kubernetes, etc...).
enum HostType implements pulumi.PulumiEnum<String> {
  kubernetes("Kubernetes");

  const HostType(this.wireValue);
  @override
  final String wireValue;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}
