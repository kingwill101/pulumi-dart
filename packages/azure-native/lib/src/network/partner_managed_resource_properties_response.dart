// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the partner managed resource.
class PartnerManagedResourcePropertiesResponse {
  /// The partner managed resource id.
  final String id;
  /// The partner managed ILB resource id
  final String internalLoadBalancerId;
  /// The partner managed SLB resource id
  final String standardLoadBalancerId;

  /// Creates a new [PartnerManagedResourcePropertiesResponse].
  /// [id] The partner managed resource id.
  /// [internalLoadBalancerId] The partner managed ILB resource id
  /// [standardLoadBalancerId] The partner managed SLB resource id
  PartnerManagedResourcePropertiesResponse({
    required this.id,
    required this.internalLoadBalancerId,
    required this.standardLoadBalancerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'internalLoadBalancerId': internalLoadBalancerId,
      'standardLoadBalancerId': standardLoadBalancerId,
    };
  }

  factory PartnerManagedResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PartnerManagedResourcePropertiesResponse(
      id: map['id'] as String,
      internalLoadBalancerId: map['internalLoadBalancerId'] as String,
      standardLoadBalancerId: map['standardLoadBalancerId'] as String,
    );
  }
}

