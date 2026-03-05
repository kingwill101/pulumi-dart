/// Type of the node.
enum DataflowGraphNodeType {
  source("Source"),
  graph("Graph"),
  destination("Destination");

  const DataflowGraphNodeType(this.wireValue);
  final String wireValue;

  static DataflowGraphNodeType fromValue(String value) {
    for (final item in DataflowGraphNodeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowGraphNodeType value: $value');
  }
}

