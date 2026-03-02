// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_component_data_volume_cap.dart';

/// {@template pulumi_applicationinsights_component_current_billing_feature_args_doc}
/// The set of arguments for ComponentCurrentBillingFeature.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_component_current_billing_feature_args_doc}
class ComponentCurrentBillingFeatureArgs {
  /// Current enabled pricing plan. When the component is in the Enterprise plan, this will list both 'Basic' and 'Application Insights Enterprise'.
  final pulumi.Input<List<String>>? currentBillingFeatures;
  /// An Application Insights component daily data volume cap
  final pulumi.Input<ApplicationInsightsComponentDataVolumeCap>? dataVolumeCap;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ComponentCurrentBillingFeatureArgs].
  /// [currentBillingFeatures] Current enabled pricing plan. When the component is in the Enterprise plan, this will list both 'Basic' and 'Application Insights Enterprise'.
  /// [dataVolumeCap] An Application Insights component daily data volume cap
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  ComponentCurrentBillingFeatureArgs({
    this.currentBillingFeatures,
    this.dataVolumeCap,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentBillingFeatures': ?currentBillingFeatures,
      'dataVolumeCap': ?pulumi.Input.mapOptionalInputValue<ApplicationInsightsComponentDataVolumeCap, Map<String, dynamic>>(dataVolumeCap, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ComponentCurrentBillingFeatureArgs.fromMap(Map<String, dynamic> map) {
    return ComponentCurrentBillingFeatureArgs(
      currentBillingFeatures: map['currentBillingFeatures'] == null ? null : ((map['currentBillingFeatures'] as List).cast<String>()).input(),
      dataVolumeCap: map['dataVolumeCap'] == null ? null : (ApplicationInsightsComponentDataVolumeCap.fromMap((map['dataVolumeCap'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

