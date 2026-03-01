/// [Required] Type of the Nodes value
enum NodesValueType {
  valueAll("All");

  const NodesValueType(this.value);
  final String value;

  static NodesValueType fromValue(String value) {
    for (final item in NodesValueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodesValueType value: $value');
  }
}

