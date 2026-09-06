import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the node.
enum DataflowGraphNodeType implements pulumi.PulumiEnum<String> {
  source("Source"),
  graph("Graph"),
  destination("Destination");

  const DataflowGraphNodeType(this.wireValue);
  @override
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
