// ignore_for_file: unused_element, unnecessary_cast


class GetRegionsRegion {
  /// The name of the region.
  final String localName;
  /// The endpoint of the region.
  final String regionEndpoint;
  /// The ID of the region.
  final String regionId;

  /// Creates a new [GetRegionsRegion].
  /// [localName] The name of the region.
  /// [regionEndpoint] The endpoint of the region.
  /// [regionId] The ID of the region.
  GetRegionsRegion({
    required this.localName,
    required this.regionEndpoint,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localName': localName,
      'regionEndpoint': regionEndpoint,
      'regionId': regionId,
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      localName: map['localName'] as String,
      regionEndpoint: map['regionEndpoint'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

