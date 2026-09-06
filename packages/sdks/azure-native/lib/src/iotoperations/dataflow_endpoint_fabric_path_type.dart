import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of location of the data in the workspace. Can be either tables or files.
enum DataflowEndpointFabricPathType implements pulumi.PulumiEnum<String> {
  files("Files"),
  tables("Tables");

  const DataflowEndpointFabricPathType(this.wireValue);
  @override
  final String wireValue;

  static DataflowEndpointFabricPathType fromValue(String value) {
    for (final item in DataflowEndpointFabricPathType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointFabricPathType value: $value');
  }
}
