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
    this.createTime,
    this.description,
    this.parameters,
    this.resourceGroupId,
    this.solutionId,
    this.solutionInstanceName,
    this.status,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<SolutionInstanceParameter>(map['parameters'], (value) => SolutionInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      solutionId: map['solutionId'] == null ? null : (map['solutionId'] as String).input(),
      solutionInstanceName: map['solutionInstanceName'] == null ? null : (map['solutionInstanceName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

