// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHostedZone.
class GetHostedZoneResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetHostedZoneResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetHostedZoneResult({
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetHostedZoneResult.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
