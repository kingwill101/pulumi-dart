// ignore_for_file: unused_element, unnecessary_cast

/// Node specific properties.
class NodeInfoResponse2 {
  /// Location of the node.
  final String zone;

  NodeInfoResponse2({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['zone'] = zone;
    return map;
  }

  factory NodeInfoResponse2.fromMap(Map<String, dynamic> map) {
    return NodeInfoResponse2(
      zone: map['zone'] as String,
    );
  }
}
