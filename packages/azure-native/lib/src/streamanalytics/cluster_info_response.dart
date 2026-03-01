// ignore_for_file: unused_element, unnecessary_cast


/// The properties associated with a Stream Analytics cluster.
class ClusterInfoResponse {
  /// The resource id of cluster.
  final String? id;

  /// Creates a new [ClusterInfoResponse].
  /// [id] The resource id of cluster.
  ClusterInfoResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ClusterInfoResponse.fromMap(Map<String, dynamic> map) {
    return ClusterInfoResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

