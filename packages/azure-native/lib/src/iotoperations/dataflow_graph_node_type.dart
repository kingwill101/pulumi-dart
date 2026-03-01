/// Type of the node.
enum DataflowGraphNodeType {
  source("Source"),
  graph("Graph"),
  destination("Destination");

  const DataflowGraphNodeType(this.value);
  final String value;

  static DataflowGraphNodeType fromValue(String value) {
    for (final item in DataflowGraphNodeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowGraphNodeType value: $value');
  }
}

