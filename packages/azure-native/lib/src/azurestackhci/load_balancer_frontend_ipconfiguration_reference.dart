// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a LoadBalancer Frontend IPConfiguration
class LoadBalancerFrontendIPConfigurationReference {
  /// name of the frontnedIPConfiguration
  final String name;

  /// Creates a new [LoadBalancerFrontendIPConfigurationReference].
  /// [name] name of the frontnedIPConfiguration
  LoadBalancerFrontendIPConfigurationReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LoadBalancerFrontendIPConfigurationReference.fromMap(Map<String, dynamic> map) {
    return LoadBalancerFrontendIPConfigurationReference(
      name: map['name'] as String,
    );
  }
}

