// ignore_for_file: unused_element, unnecessary_cast

/// Node specific properties.
class NodeInfoResponseRedisV1beta1 {
  /// Location of the node.
  final String zone;

  /// Creates a new [NodeInfoResponseRedisV1beta1].
  /// [zone] Location of the node.
  NodeInfoResponseRedisV1beta1({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['zone'] = zone;
    return map;
  }

  factory NodeInfoResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeInfoResponseRedisV1beta1(
      zone: map['zone'] as String,
    );
  }
}
