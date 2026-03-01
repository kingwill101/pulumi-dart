// ignore_for_file: unused_element, unnecessary_cast


/// Third Party Management settings.
class ThirdPartyManagementSettingsResponse {
  /// License Cost.
  final double licenseCost;
  /// Support Cost.
  final double supportCost;

  /// Creates a new [ThirdPartyManagementSettingsResponse].
  /// [licenseCost] License Cost.
  /// [supportCost] Support Cost.
  ThirdPartyManagementSettingsResponse({
    required this.licenseCost,
    required this.supportCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
      'supportCost': supportCost,
    };
  }

  factory ThirdPartyManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ThirdPartyManagementSettingsResponse(
      licenseCost: map['licenseCost'] as double,
      supportCost: map['supportCost'] as double,
    );
  }
}

