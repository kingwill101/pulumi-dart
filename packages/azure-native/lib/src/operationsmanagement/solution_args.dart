// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_plan.dart';
import 'solution_properties.dart';

/// {@template pulumi_operationsmanagement_solution_args_doc}
/// The set of arguments for Solution.
/// {@endtemplate}
/// {@macro pulumi_operationsmanagement_solution_args_doc}
class SolutionArgs {
  /// Resource location
  final pulumi.Input<String>? location;
  /// Plan for solution object supported by the OperationsManagement resource provider.
  final pulumi.Input<SolutionPlan>? plan;
  /// Properties for solution object supported by the OperationsManagement resource provider.
  final pulumi.Input<SolutionProperties>? properties;
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// User Solution Name.
  final pulumi.Input<String>? solutionName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SolutionArgs].
  /// [location] Resource location
  /// [plan] Plan for solution object supported by the OperationsManagement resource provider.
  /// [properties] Properties for solution object supported by the OperationsManagement resource provider.
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  /// [solutionName] User Solution Name.
  /// [tags] Resource tags
  SolutionArgs({
    String? location,
    SolutionPlan? plan,
    SolutionProperties? properties,
    required String resourceGroupName,
    String? solutionName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      plan = pulumi.Input.asOptionalInput<SolutionPlan>(plan),
      properties = pulumi.Input.asOptionalInput<SolutionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asOptionalInput<String>(solutionName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'plan': ?pulumi.Input.mapOptionalInputValue<SolutionPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<SolutionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionName': ?solutionName,
      'tags': ?tags,
    };
  }

  factory SolutionArgs.fromMap(Map<String, dynamic> map) {
    return SolutionArgs(
      location: map['location'] == null ? null : map['location'] as String,
      plan: map['plan'] == null ? null : SolutionPlan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : SolutionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      solutionName: map['solutionName'] == null ? null : map['solutionName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

