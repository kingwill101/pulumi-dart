// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to a LoadBalancer Frontend IPConfiguration
class LoadBalancerFrontendIPConfigurationReferenceResponse {
  /// name of the frontnedIPConfiguration
  final pulumi.Input<String> name;

  /// Creates a new [LoadBalancerFrontendIPConfigurationReferenceResponse].
  /// [name] name of the frontnedIPConfiguration
  const LoadBalancerFrontendIPConfigurationReferenceResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LoadBalancerFrontendIPConfigurationReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerFrontendIPConfigurationReferenceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

