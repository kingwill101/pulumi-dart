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
    return <String, dynamic>{
      'zone': zone,
    };
  }

  factory NodeInfoResponse.fromMap(Map<String, dynamic> map) {
    return NodeInfoResponse(
      zone: map['zone'] as String,
    );
  }
}

