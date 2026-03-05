/// [Required] Type of the Nodes value
enum NodesValueType {
  valueAll("All");

  const NodesValueType(this.wireValue);
  final String wireValue;

  static NodesValueType fromValue(String value) {
    for (final item in NodesValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodesValueType value: $value');
  }
}

