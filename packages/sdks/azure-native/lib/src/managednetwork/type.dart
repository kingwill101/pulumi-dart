/// Gets or sets the connectivity type of a network structure policy
enum Type {
  valueHubAndSpokeTopology("HubAndSpokeTopology"),
  valueMeshTopology("MeshTopology");

  const Type(this.wireValue);
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
