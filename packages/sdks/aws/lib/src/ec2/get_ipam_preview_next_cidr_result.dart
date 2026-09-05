// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpamPreviewNextCidr.
class GetIpamPreviewNextCidrResult {
  /// Previewed CIDR from the pool.
  final String? cidr;
  final List<String>? disallowedCidrs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipamPoolId;
  final int? netmaskLength;
  final String? region;

  /// Creates a new [GetIpamPreviewNextCidrResult].
  /// [cidr] Previewed CIDR from the pool.
  /// [disallowedCidrs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipamPoolId] Optional.
  /// [netmaskLength] Optional.
  /// [region] Optional.
  const GetIpamPreviewNextCidrResult({
    this.cidr,
    this.disallowedCidrs,
    this.id,
    this.ipamPoolId,
    this.netmaskLength,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'disallowedCidrs': ?disallowedCidrs,
      'id': ?id,
      'ipamPoolId': ?ipamPoolId,
      'netmaskLength': ?netmaskLength,
      'region': ?region,
    };
  }

  factory GetIpamPreviewNextCidrResult.fromMap(Map<String, dynamic> map) {
    return GetIpamPreviewNextCidrResult(
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disallowedCidrs: (() { final guardedValue = map['disallowedCidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamPoolId: (() { final guardedValue = map['ipamPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      netmaskLength: (() { final guardedValue = map['netmaskLength']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
