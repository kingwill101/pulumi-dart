// ignore_for_file: unused_element, unnecessary_cast

class ServiceMultiRegionSettings {
  /// (Output)
  /// System-generated unique id for the multi-region Service.
  final String? multiRegionId;

  /// The list of regions to deploy the multi-region Service.
  final List<String>? regions;

  /// Creates a new [ServiceMultiRegionSettings].
  /// [multiRegionId] (Output)
  /// [regions] The list of regions to deploy the multi-region Service.
  ServiceMultiRegionSettings({
    this.multiRegionId,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final multiRegionIdValue = multiRegionId;
    if (multiRegionIdValue != null) {
      map['multiRegionId'] = multiRegionIdValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    return map;
  }

  factory ServiceMultiRegionSettings.fromMap(Map<String, dynamic> map) {
    return ServiceMultiRegionSettings(
      multiRegionId:
          map['multiRegionId'] == null ? null : map['multiRegionId'] as String,
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
    );
  }
}
