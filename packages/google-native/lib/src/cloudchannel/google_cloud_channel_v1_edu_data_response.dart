// ignore_for_file: unused_element, unnecessary_cast

/// Required Edu Attributes
class GoogleCloudChannelV1EduDataResponse {
  /// Size of the institute.
  final String instituteSize;

  /// Designated institute type of customer.
  final String instituteType;

  /// Web address for the edu customer's institution.
  final String website;

  /// Creates a new [GoogleCloudChannelV1EduDataResponse].
  /// [instituteSize] Size of the institute.
  /// [instituteType] Designated institute type of customer.
  /// [website] Web address for the edu customer's institution.
  GoogleCloudChannelV1EduDataResponse({
    required this.instituteSize,
    required this.instituteType,
    required this.website,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instituteSize'] = instituteSize;
    map['instituteType'] = instituteType;
    map['website'] = website;
    return map;
  }

  factory GoogleCloudChannelV1EduDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1EduDataResponse(
      instituteSize: map['instituteSize'] as String,
      instituteType: map['instituteType'] as String,
      website: map['website'] as String,
    );
  }
}
