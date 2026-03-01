// ignore_for_file: unused_element, unnecessary_cast

import 'application_insights_component_data_volume_cap_response.dart';

/// Result data returned by getComponentCurrentBillingFeature.
class GetComponentCurrentBillingFeatureResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Current enabled pricing plan. When the component is in the Enterprise plan, this will list both 'Basic' and 'Application Insights Enterprise'.
  final List<String>? currentBillingFeatures;
  /// An Application Insights component daily data volume cap
  final ApplicationInsightsComponentDataVolumeCapResponse? dataVolumeCap;

  /// Creates a new [GetComponentCurrentBillingFeatureResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [currentBillingFeatures] Current enabled pricing plan. When the component is in the Enterprise plan, this will list both 'Basic' and 'Application Insights Enterprise'.
  /// [dataVolumeCap] An Application Insights component daily data volume cap
  GetComponentCurrentBillingFeatureResult({
    required this.azureApiVersion,
    this.currentBillingFeatures,
    this.dataVolumeCap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'currentBillingFeatures': ?currentBillingFeatures,
      'dataVolumeCap': ?dataVolumeCap == null ? null : dataVolumeCap!.toMap(),
    };
  }

  factory GetComponentCurrentBillingFeatureResult.fromMap(Map<String, dynamic> map) {
    return GetComponentCurrentBillingFeatureResult(
      azureApiVersion: map['azureApiVersion'] as String,
      currentBillingFeatures: map['currentBillingFeatures'] == null ? null : (map['currentBillingFeatures'] as List).cast<String>(),
      dataVolumeCap: map['dataVolumeCap'] == null ? null : ApplicationInsightsComponentDataVolumeCapResponse.fromMap((map['dataVolumeCap'] as Map).cast<String, dynamic>()),
    );
  }
}

