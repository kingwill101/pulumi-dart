// ignore_for_file: unused_element, unnecessary_cast


/// NodeSwapStatus represents swap memory information.
class NodeSwapStatusPatch {
  /// Total amount of swap memory in bytes.
  final int? capacity;

  /// Creates a new [NodeSwapStatusPatch].
  /// [capacity] Total amount of swap memory in bytes.
  NodeSwapStatusPatch({
    this.capacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
    };
  }

  factory NodeSwapStatusPatch.fromMap(Map<String, dynamic> map) {
    return NodeSwapStatusPatch(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
    );
  }
}

