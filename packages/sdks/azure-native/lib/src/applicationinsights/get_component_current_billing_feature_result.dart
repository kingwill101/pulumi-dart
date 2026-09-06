// ignore_for_file: unused_element, unnecessary_cast

import 'application_insights_component_data_volume_cap_response.dart';

/// Result data returned by getComponentCurrentBillingFeature.
class GetComponentCurrentBillingFeatureResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Current enabled pricing plan. When the component is in the Enterprise plan, this will list both 'Basic' and 'Application Insights Enterprise'.
  final List<String>? currentBillingFeatures;
  /// An Application Insights component daily data volume cap
  final ApplicationInsightsComponentDataVolumeCapResponse? dataVolumeCap;

  /// Creates a new [GetComponentCurrentBillingFeatureResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [currentBillingFeatures] Current enabled pricing plan. When the component is in the Enterprise plan, this will list both 'Basic' and 'Application Insights Enterprise'.
  /// [dataVolumeCap] An Application Insights component daily data volume cap
  const GetComponentCurrentBillingFeatureResult({
    this.azureApiVersion,
    this.currentBillingFeatures,
    this.dataVolumeCap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'currentBillingFeatures': ?currentBillingFeatures,
      'dataVolumeCap': ?dataVolumeCap?.toMap(),
    };
  }

  factory GetComponentCurrentBillingFeatureResult.fromMap(Map<String, dynamic> map) {
    return GetComponentCurrentBillingFeatureResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentBillingFeatures: (() { final guardedValue = map['currentBillingFeatures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dataVolumeCap: (() { final guardedValue = map['dataVolumeCap']; if (guardedValue == null) return null; return ApplicationInsightsComponentDataVolumeCapResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
