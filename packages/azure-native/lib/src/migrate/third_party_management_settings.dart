// ignore_for_file: unused_element, unnecessary_cast


/// Third Party Management settings.
class ThirdPartyManagementSettings {
  /// License Cost.
  final double licenseCost;
  /// Support Cost.
  final double supportCost;

  /// Creates a new [ThirdPartyManagementSettings].
  /// [licenseCost] License Cost.
  /// [supportCost] Support Cost.
  ThirdPartyManagementSettings({
    required this.licenseCost,
    required this.supportCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
      'supportCost': supportCost,
    };
  }

  factory ThirdPartyManagementSettings.fromMap(Map<String, dynamic> map) {
    return ThirdPartyManagementSettings(
      licenseCost: map['licenseCost'] as double,
      supportCost: map['supportCost'] as double,
    );
  }
}

