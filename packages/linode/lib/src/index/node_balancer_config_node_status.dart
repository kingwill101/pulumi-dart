// ignore_for_file: unused_element, unnecessary_cast


class NodeBalancerConfigNodeStatus {
  /// The number of backends considered to be 'DOWN' and unhealthy. These are not in rotation, and not serving requests.
  final int down;
  /// The number of backends considered to be 'UP' and healthy, and that are serving requests.
  final int up;

  /// Creates a new [NodeBalancerConfigNodeStatus].
  /// [down] The number of backends considered to be 'DOWN' and unhealthy. These are not in rotation, and not serving requests.
  /// [up] The number of backends considered to be 'UP' and healthy, and that are serving requests.
  NodeBalancerConfigNodeStatus({
    required this.down,
    required this.up,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'down': down,
      'up': up,
    };
  }

  factory NodeBalancerConfigNodeStatus.fromMap(Map<String, dynamic> map) {
    return NodeBalancerConfigNodeStatus(
      down: map['down'] as int,
      up: map['up'] as int,
    );
  }
}

