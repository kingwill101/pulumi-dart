// ignore_for_file: unused_element, unnecessary_cast


class GetRegionsRegion {
  /// The Region code of a given Region
  final String regionName;
  /// The opt-in status of the region. Possible values are `ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, and `ENABLED_BY_DEFAULT`.
  final String regionOptStatus;

  /// Creates a new [GetRegionsRegion].
  /// [regionName] The Region code of a given Region
  /// [regionOptStatus] The opt-in status of the region. Possible values are `ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, and `ENABLED_BY_DEFAULT`.
  GetRegionsRegion({
    required this.regionName,
    required this.regionOptStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
      'regionOptStatus': regionOptStatus,
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      regionName: map['regionName'] as String,
      regionOptStatus: map['regionOptStatus'] as String,
    );
  }
}

