import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the connectivity type of a network structure policy
enum Type implements pulumi.PulumiEnum<String> {
  valueHubAndSpokeTopology("HubAndSpokeTopology"),
  valueMeshTopology("MeshTopology");

  const Type(this.wireValue);
  @override
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
