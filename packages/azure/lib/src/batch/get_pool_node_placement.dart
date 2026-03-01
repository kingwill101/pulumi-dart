// ignore_for_file: unused_element, unnecessary_cast


class GetPoolNodePlacement {
  /// The placement policy for allocating nodes in the pool.
  final String policy;

  /// Creates a new [GetPoolNodePlacement].
  /// [policy] The placement policy for allocating nodes in the pool.
  GetPoolNodePlacement({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory GetPoolNodePlacement.fromMap(Map<String, dynamic> map) {
    return GetPoolNodePlacement(
      policy: map['policy'] as String,
    );
  }
}

