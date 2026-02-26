// ignore_for_file: unused_element, unnecessary_cast

class GetServiceMultiRegionSetting {
  /// System-generated unique id for the multi-region Service.
  final String multiRegionId;

  /// The list of regions to deploy the multi-region Service.
  final List<String> regions;

  GetServiceMultiRegionSetting({
    required this.multiRegionId,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['multiRegionId'] = multiRegionId;
    map['regions'] = regions;
    return map;
  }

  factory GetServiceMultiRegionSetting.fromMap(Map<String, dynamic> map) {
    return GetServiceMultiRegionSetting(
      multiRegionId: map['multiRegionId'] as String,
      regions: (map['regions'] as List).cast<String>(),
    );
  }
}
