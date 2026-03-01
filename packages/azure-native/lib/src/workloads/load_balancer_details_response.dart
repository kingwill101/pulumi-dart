// ignore_for_file: unused_element, unnecessary_cast


/// The Load Balancer details such as Load Balancer ID.
class LoadBalancerDetailsResponse {
  /// Fully qualified resource ID for the load balancer.
  final String id;

  /// Creates a new [LoadBalancerDetailsResponse].
  /// [id] Fully qualified resource ID for the load balancer.
  LoadBalancerDetailsResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory LoadBalancerDetailsResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerDetailsResponse(
      id: map['id'] as String,
    );
  }
}

