// ignore_for_file: unused_element, unnecessary_cast


class DbInstanceEndpointNodeItem {
  /// The ID of the node.
  final String nodeId;
  /// The weight of the node. Read requests are distributed based on the weight.Valid values: 0 to 100.
  final int weight;

  /// Creates a new [DbInstanceEndpointNodeItem].
  /// [nodeId] The ID of the node.
  /// [weight] The weight of the node. Read requests are distributed based on the weight.Valid values: 0 to 100.
  DbInstanceEndpointNodeItem({
    required this.nodeId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeId': nodeId,
      'weight': weight,
    };
  }

  factory DbInstanceEndpointNodeItem.fromMap(Map<String, dynamic> map) {
    return DbInstanceEndpointNodeItem(
      nodeId: map['nodeId'] as String,
      weight: map['weight'] as int,
    );
  }
}

