// ignore_for_file: unused_element, unnecessary_cast

class GetTiersTier {
  /// The maximum disk size of this tier in bytes.
  final int diskQuota;

  /// The maximum ram usage of this tier in bytes.
  final int ram;

  /// The applicable regions for this tier.
  final List<String> regions;

  /// An identifier for the machine type, for example, db-custom-1-3840.
  final String tier;

  /// Creates a new [GetTiersTier].
  /// [diskQuota] The maximum disk size of this tier in bytes.
  /// [ram] The maximum ram usage of this tier in bytes.
  /// [regions] The applicable regions for this tier.
  /// [tier] An identifier for the machine type, for example, db-custom-1-3840.
  GetTiersTier({
    required this.diskQuota,
    required this.ram,
    required this.regions,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskQuota': diskQuota,
      'ram': ram,
      'regions': regions,
      'tier': tier,
    };
  }

  factory GetTiersTier.fromMap(Map<String, dynamic> map) {
    return GetTiersTier(
      diskQuota: map['diskQuota'] as int,
      ram: map['ram'] as int,
      regions: (map['regions'] as List).cast<String>(),
      tier: map['tier'] as String,
    );
  }
}
