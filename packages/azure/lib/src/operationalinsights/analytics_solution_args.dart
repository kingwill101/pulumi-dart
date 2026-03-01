// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_solution_plan.dart';

/// {@template pulumi_operationalinsights_analytics_solution_analytics_solution_args_doc}
/// The set of arguments for AnalyticsSolution.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_analytics_solution_analytics_solution_args_doc}
class AnalyticsSolutionArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `plan` block as documented below.
  final pulumi.Input<AnalyticsSolutionPlan> plan;
  /// The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created.
  final pulumi.Input<String> solutionName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceName;
  /// The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceResourceId;

  /// Creates a new [AnalyticsSolutionArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [plan] A `plan` block as documented below.
  /// [resourceGroupName] The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group.
  /// [solutionName] Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workspaceName] The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  /// [workspaceResourceId] The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  AnalyticsSolutionArgs({
    String? location,
    required AnalyticsSolutionPlan plan,
    required String resourceGroupName,
    required String solutionName,
    Map<String, String>? tags,
    required String workspaceName,
    required String workspaceResourceId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      plan = pulumi.Input.asInput<AnalyticsSolutionPlan>(plan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asInput<String>(solutionName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName),
      workspaceResourceId = pulumi.Input.asInput<String>(workspaceResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'plan': pulumi.Input.mapInputValue<AnalyticsSolutionPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
      'tags': ?tags,
      'workspaceName': workspaceName,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory AnalyticsSolutionArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsSolutionArgs(
      location: map['location'] == null ? null : map['location'] as String,
      plan: AnalyticsSolutionPlan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      solutionName: map['solutionName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceName: map['workspaceName'] as String,
      workspaceResourceId: map['workspaceResourceId'] as String,
    );
  }
}

