// ignore_for_file: unused_element, unnecessary_cast


/// Additional SQL Server feature settings.
class AdditionalFeaturesServerConfigurationsResponse {
  /// Enable or disable R services (SQL 2016 onwards).
  final bool? isRServicesEnabled;

  /// Creates a new [AdditionalFeaturesServerConfigurationsResponse].
  /// [isRServicesEnabled] Enable or disable R services (SQL 2016 onwards).
  AdditionalFeaturesServerConfigurationsResponse({
    this.isRServicesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isRServicesEnabled': ?isRServicesEnabled,
    };
  }

  factory AdditionalFeaturesServerConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalFeaturesServerConfigurationsResponse(
      isRServicesEnabled: map['isRServicesEnabled'] == null ? null : map['isRServicesEnabled'] as bool,
    );
  }
}

