// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_properties.dart';

/// {@template pulumi_agfoodplatform_solution_args_doc}
/// The set of arguments for Solution.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_solution_args_doc}
class SolutionArgs {
  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String> dataManagerForAgricultureResourceName;
  /// Solution resource properties.
  final pulumi.Input<SolutionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SolutionId for Data Manager For Agriculture Resource.
  final pulumi.Input<String>? solutionId;

  /// Creates a new [SolutionArgs].
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [properties] Solution resource properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionId] SolutionId for Data Manager For Agriculture Resource.
  SolutionArgs({
    required pulumi.Output<String> dataManagerForAgricultureResourceName,
    pulumi.Output<SolutionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? solutionId,
  }) :
      dataManagerForAgricultureResourceName = pulumi.Input.asInput<String>(dataManagerForAgricultureResourceName),
      properties = pulumi.Input.asOptionalInput<SolutionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionId = pulumi.Input.asOptionalInput<String>(solutionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagerForAgricultureResourceName': dataManagerForAgricultureResourceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<SolutionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionId': ?solutionId,
    };
  }

  factory SolutionArgs.fromMap(Map<String, dynamic> map) {
    return SolutionArgs(
      dataManagerForAgricultureResourceName: pulumi.Output.create<String>(map['dataManagerForAgricultureResourceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SolutionProperties>(SolutionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionId: map['solutionId'] == null ? null : pulumi.Output.create<String>(map['solutionId'] as String),
    );
  }
}

