// ignore_for_file: unused_element, unnecessary_cast


/// The desired properties of the frontend instances of the Broker
class FrontendResponse {
  /// The desired number of frontend instances (pods).
  final int replicas;
  /// Number of logical frontend workers per instance (pod).
  final int? workers;

  /// Creates a new [FrontendResponse].
  /// [replicas] The desired number of frontend instances (pods).
  /// [workers] Number of logical frontend workers per instance (pod).
  FrontendResponse({
    required this.replicas,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': replicas,
      'workers': ?workers,
    };
  }

  factory FrontendResponse.fromMap(Map<String, dynamic> map) {
    return FrontendResponse(
      replicas: map['replicas'] as int,
      workers: map['workers'] == null ? null : map['workers'] as int,
    );
  }
}

