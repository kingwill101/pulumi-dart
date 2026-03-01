/// Gets or sets the connectivity type of a network structure policy
enum Type {
  valueHubAndSpokeTopology("HubAndSpokeTopology"),
  valueMeshTopology("MeshTopology");

  const Type(this.value);
  final String value;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}

