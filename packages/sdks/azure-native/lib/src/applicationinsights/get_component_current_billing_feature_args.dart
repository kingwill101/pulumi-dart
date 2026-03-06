// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_component_current_billing_feature_args_doc}
/// Arguments for getComponentCurrentBillingFeature.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_component_current_billing_feature_args_doc}
class GetComponentCurrentBillingFeatureArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetComponentCurrentBillingFeatureArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  const GetComponentCurrentBillingFeatureArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetComponentCurrentBillingFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetComponentCurrentBillingFeatureArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

