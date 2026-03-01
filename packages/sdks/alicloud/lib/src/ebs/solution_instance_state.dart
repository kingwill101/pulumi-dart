// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_instance_parameter.dart';

/// Input properties used for looking up and filtering SolutionInstance resources.
class SolutionInstanceState {
  /// Solution Instance Creation Time.
  final pulumi.Input<String>? createTime;
  /// Solution Instance Description.
  final pulumi.Input<String>? description;
  /// Solution Instance Creation Parameters. See `parameters` below.
  final pulumi.Input<List<SolutionInstanceParameter>>? parameters;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Solution ID.
  final pulumi.Input<String>? solutionId;
  /// Solution Instance Name.
  final pulumi.Input<String>? solutionInstanceName;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [SolutionInstanceState].
  /// [createTime] Solution Instance Creation Time.
  /// [description] Solution Instance Description.
  /// [parameters] Solution Instance Creation Parameters. See `parameters` below.
  /// [resourceGroupId] The ID of the resource group.
  /// [solutionId] Solution ID.
  /// [solutionInstanceName] Solution Instance Name.
  /// [status] The status of the resource.
  SolutionInstanceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<SolutionInstanceParameter>>? parameters,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? solutionId,
    pulumi.Output<String>? solutionInstanceName,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      parameters = pulumi.Input.asOptionalInput<List<SolutionInstanceParameter>>(parameters),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      solutionId = pulumi.Input.asOptionalInput<String>(solutionId),
      solutionInstanceName = pulumi.Input.asOptionalInput<String>(solutionInstanceName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<SolutionInstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SolutionInstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'solutionId': ?solutionId,
      'solutionInstanceName': ?solutionInstanceName,
      'status': ?status,
    };
  }

  factory SolutionInstanceState.fromMap(Map<String, dynamic> map) {
    return SolutionInstanceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<SolutionInstanceParameter>>(pulumi.Input.decodeList<SolutionInstanceParameter>(map['parameters'], (value) => SolutionInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      solutionId: map['solutionId'] == null ? null : pulumi.Output.create<String>(map['solutionId'] as String),
      solutionInstanceName: map['solutionInstanceName'] == null ? null : pulumi.Output.create<String>(map['solutionInstanceName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

