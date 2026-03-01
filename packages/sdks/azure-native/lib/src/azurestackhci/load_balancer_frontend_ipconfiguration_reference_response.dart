// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a LoadBalancer Frontend IPConfiguration
class LoadBalancerFrontendIPConfigurationReferenceResponse {
  /// name of the frontnedIPConfiguration
  final String name;

  /// Creates a new [LoadBalancerFrontendIPConfigurationReferenceResponse].
  /// [name] name of the frontnedIPConfiguration
  LoadBalancerFrontendIPConfigurationReferenceResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LoadBalancerFrontendIPConfigurationReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerFrontendIPConfigurationReferenceResponse(
      name: map['name'] as String,
    );
  }
}

