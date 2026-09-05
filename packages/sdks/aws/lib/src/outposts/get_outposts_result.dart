// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutposts.
class GetOutpostsResult {
  /// Set of ARNs.
  final List<String>? arns;
  final String? availabilityZone;
  final String? availabilityZoneId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of identifiers.
  final List<String>? ids;
  final String? ownerId;
  final String? region;
  final String? siteId;

  /// Creates a new [GetOutpostsResult].
  /// [arns] Set of ARNs.
  /// [availabilityZone] Optional.
  /// [availabilityZoneId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of identifiers.
  /// [ownerId] Optional.
  /// [region] Optional.
  /// [siteId] Optional.
  const GetOutpostsResult({
    this.arns,
    this.availabilityZone,
    this.availabilityZoneId,
    this.id,
    this.ids,
    this.ownerId,
    this.region,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'id': ?id,
      'ids': ?ids,
      'ownerId': ?ownerId,
      'region': ?region,
      'siteId': ?siteId,
    };
  }

  factory GetOutpostsResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
