// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHostedZoneId.
class GetHostedZoneIdResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? loadBalancerType;
  final String? region;

  /// Creates a new [GetHostedZoneIdResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancerType] Optional.
  /// [region] Optional.
  const GetHostedZoneIdResult({
    this.id,
    this.loadBalancerType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'loadBalancerType': ?loadBalancerType,
      'region': ?region,
    };
  }

  factory GetHostedZoneIdResult.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
