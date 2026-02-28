// ignore_for_file: unused_element, unnecessary_cast

/// Node specific properties.
class NodeInfoResponse {
  /// Location of the node.
  final String zone;

  /// Creates a new [NodeInfoResponse].
  /// [zone] Location of the node.
  NodeInfoResponse({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['zone'] = zone;
    return map;
  }

  factory NodeInfoResponse.fromMap(Map<String, dynamic> map) {
    return NodeInfoResponse(
      zone: map['zone'] as String,
    );
  }
}
