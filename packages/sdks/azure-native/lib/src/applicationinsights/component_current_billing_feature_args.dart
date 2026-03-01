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
    pulumi.Output<List<String>>? currentBillingFeatures,
    pulumi.Output<ApplicationInsightsComponentDataVolumeCap>? dataVolumeCap,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      currentBillingFeatures = pulumi.Input.asOptionalInput<List<String>>(currentBillingFeatures),
      dataVolumeCap = pulumi.Input.asOptionalInput<ApplicationInsightsComponentDataVolumeCap>(dataVolumeCap),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

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
      currentBillingFeatures: map['currentBillingFeatures'] == null ? null : pulumi.Output.create<List<String>>((map['currentBillingFeatures'] as List).cast<String>()),
      dataVolumeCap: map['dataVolumeCap'] == null ? null : pulumi.Output.create<ApplicationInsightsComponentDataVolumeCap>(ApplicationInsightsComponentDataVolumeCap.fromMap((map['dataVolumeCap'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

