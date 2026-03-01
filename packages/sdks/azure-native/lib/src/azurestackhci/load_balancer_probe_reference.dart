// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a LoadBalancer health probe
class LoadBalancerProbeReference {
  /// name of the health probe
  final String name;

  /// Creates a new [LoadBalancerProbeReference].
  /// [name] name of the health probe
  LoadBalancerProbeReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LoadBalancerProbeReference.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProbeReference(
      name: map['name'] as String,
    );
  }
}

