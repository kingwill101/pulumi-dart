import 'package:pulumi/pulumi.dart' as pulumi;

/// The behavior of the endpoint filter. Currently only 'Include' is supported.
enum ConnectionMonitorEndpointFilterType implements pulumi.PulumiEnum<String> {
  valueInclude("Include");

  const ConnectionMonitorEndpointFilterType(this.wireValue);
  @override
  final String wireValue;

  static ConnectionMonitorEndpointFilterType fromValue(String value) {
    for (final item in ConnectionMonitorEndpointFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionMonitorEndpointFilterType value: $value');
  }
}
