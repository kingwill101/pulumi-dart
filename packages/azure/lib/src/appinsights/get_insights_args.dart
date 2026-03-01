// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appinsights_get_insights_get_insights_args_doc}
/// Arguments for getInsights.
/// {@endtemplate}
/// {@macro pulumi_appinsights_get_insights_get_insights_args_doc}
class GetInsightsArgs {
  /// Specifies the name of the Application Insights component.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Application Insights component is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInsightsArgs].
  /// [name] Specifies the name of the Application Insights component.
  /// [resourceGroupName] Specifies the name of the resource group the Application Insights component is located in.
  GetInsightsArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInsightsArgs.fromMap(Map<String, dynamic> map) {
    return GetInsightsArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

