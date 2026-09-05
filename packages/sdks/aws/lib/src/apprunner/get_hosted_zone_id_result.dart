// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHostedZoneId.
class GetHostedZoneIdResult {
  /// ID of the AWS App Runner service HostedZoneId in the selected Region.
  final String? id;
  final String? region;

  /// Creates a new [GetHostedZoneIdResult].
  /// [id] ID of the AWS App Runner service HostedZoneId in the selected Region.
  /// [region] Optional.
  const GetHostedZoneIdResult({
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetHostedZoneIdResult.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
