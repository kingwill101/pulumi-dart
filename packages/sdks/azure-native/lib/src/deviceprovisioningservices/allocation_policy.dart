import 'package:pulumi/pulumi.dart' as pulumi;

/// Allocation policy to be used by this provisioning service.
enum AllocationPolicy implements pulumi.PulumiEnum<String> {
  valueHashed("Hashed"),
  valueGeoLatency("GeoLatency"),
  valueStatic("Static");

  const AllocationPolicy(this.wireValue);
  @override
  final String wireValue;

  static AllocationPolicy fromValue(String value) {
    for (final item in AllocationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationPolicy value: $value');
  }
}
