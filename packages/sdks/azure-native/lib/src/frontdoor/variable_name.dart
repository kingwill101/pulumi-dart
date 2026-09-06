import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the supported variable for group by
enum VariableName implements pulumi.PulumiEnum<String> {
  socketAddr("SocketAddr"),
  geoLocation("GeoLocation"),
  none("None");

  const VariableName(this.wireValue);
  @override
  final String wireValue;

  static VariableName fromValue(String value) {
    for (final item in VariableName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VariableName value: $value');
  }
}
