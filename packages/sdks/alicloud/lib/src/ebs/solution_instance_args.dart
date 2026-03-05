// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_instance_parameter.dart';

/// {@template pulumi_ebs_solution_instance_solution_instance_args_doc}
/// The set of arguments for SolutionInstance.
/// {@endtemplate}
/// {@macro pulumi_ebs_solution_instance_solution_instance_args_doc}
class SolutionInstanceArgs {
  /// Solution Instance Description.
  final pulumi.Input<String>? description;
  /// Solution Instance Creation Parameters. See `parameters` below.
  final pulumi.Input<List<SolutionInstanceParameter>>? parameters;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Solution ID.
  final pulumi.Input<String> solutionId;
  /// Solution Instance Name.
  final pulumi.Input<String>? solutionInstanceName;

  /// Creates a new [SolutionInstanceArgs].
  /// [description] Solution Instance Description.
  /// [parameters] Solution Instance Creation Parameters. See `parameters` below.
  /// [resourceGroupId] The ID of the resource group.
  /// [solutionId] Solution ID.
  /// [solutionInstanceName] Solution Instance Name.
  SolutionInstanceArgs({
    this.description,
    this.parameters,
    this.resourceGroupId,
    required this.solutionId,
    this.solutionInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<SolutionInstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SolutionInstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'solutionId': solutionId,
      'solutionInstanceName': ?solutionInstanceName,
    };
  }

  factory SolutionInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SolutionInstanceArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SolutionInstanceParameter>(guardedValue, (value) => SolutionInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutionId: pulumi.Input.fromValue(map['solutionId'] as String),
      solutionInstanceName: (() { final guardedValue = map['solutionInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

