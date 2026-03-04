// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to a LoadBalancer health probe
class LoadBalancerProbeReferenceResponse {
  /// name of the health probe
  final pulumi.Input<String> name;

  /// Creates a new [LoadBalancerProbeReferenceResponse].
  /// [name] name of the health probe
  LoadBalancerProbeReferenceResponse({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory LoadBalancerProbeReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProbeReferenceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
