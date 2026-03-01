// ignore_for_file: unused_element, unnecessary_cast


/// The settings for Implementation Guides - defining capabilities for national standards, vendor consortiums, clinical societies, etc.
class ImplementationGuidesConfigurationResponse {
  /// If US Core Missing Data requirement is enabled.
  final bool? usCoreMissingData;

  /// Creates a new [ImplementationGuidesConfigurationResponse].
  /// [usCoreMissingData] If US Core Missing Data requirement is enabled.
  ImplementationGuidesConfigurationResponse({
    this.usCoreMissingData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usCoreMissingData': ?usCoreMissingData,
    };
  }

  factory ImplementationGuidesConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ImplementationGuidesConfigurationResponse(
      usCoreMissingData: map['usCoreMissingData'] == null ? null : map['usCoreMissingData'] as bool,
    );
  }
}

