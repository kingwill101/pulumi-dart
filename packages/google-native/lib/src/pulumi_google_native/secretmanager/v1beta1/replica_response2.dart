// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Replica for this Secret.
class ReplicaResponse2 {
  /// The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  final String location;

  ReplicaResponse2({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    return map;
  }

  factory ReplicaResponse2.fromMap(Map<String, dynamic> map) {
    return ReplicaResponse2(
      location: map['location'] as String,
    );
  }
}
