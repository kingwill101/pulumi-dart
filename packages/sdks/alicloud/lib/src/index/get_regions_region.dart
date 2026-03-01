// ignore_for_file: unused_element, unnecessary_cast


class GetRegionsRegion {
  /// ID of the region.
  final String id;
  /// Name of the region in the local language.
  final String localName;
  final String regionId;

  /// Creates a new [GetRegionsRegion].
  /// [id] ID of the region.
  /// [localName] Name of the region in the local language.
  /// [regionId] Required.
  GetRegionsRegion({
    required this.id,
    required this.localName,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'localName': localName,
      'regionId': regionId,
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      id: map['id'] as String,
      localName: map['localName'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

