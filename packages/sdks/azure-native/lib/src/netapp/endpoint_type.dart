import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the local volume is the source or destination for the Volume Replication
enum EndpointType implements pulumi.PulumiEnum<String> {
  valueSrc("src"),
  valueDst("dst");

  const EndpointType(this.wireValue);
  @override
  final String wireValue;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}
