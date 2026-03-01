// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a LoadBalancer health probe
class LoadBalancerProbeReferenceResponse {
  /// name of the health probe
  final String name;

  /// Creates a new [LoadBalancerProbeReferenceResponse].
  /// [name] name of the health probe
  LoadBalancerProbeReferenceResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LoadBalancerProbeReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProbeReferenceResponse(
      name: map['name'] as String,
    );
  }
}

