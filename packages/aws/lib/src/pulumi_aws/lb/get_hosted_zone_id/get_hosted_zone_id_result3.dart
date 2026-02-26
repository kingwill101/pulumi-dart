// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getHostedZoneId.
class GetHostedZoneIdResult3 {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? loadBalancerType;
  final String region;

  GetHostedZoneIdResult3({
    required this.id,
    this.loadBalancerType,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final loadBalancerTypeValue = loadBalancerType;
    if (loadBalancerTypeValue != null) {
      map['loadBalancerType'] = loadBalancerTypeValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetHostedZoneIdResult3.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdResult3(
      id: map['id'] as String,
      loadBalancerType: map['loadBalancerType'] == null
          ? null
          : map['loadBalancerType'] as String,
      region: map['region'] as String,
    );
  }
}
