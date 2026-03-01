// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouseenterprisedbcluster_computing_group_computing_group_args_doc}
/// The set of arguments for ComputingGroup.
/// {@endtemplate}
/// {@macro pulumi_clickhouseenterprisedbcluster_computing_group_computing_group_args_doc}
class ComputingGroupArgs {
  /// Computing group name
  final pulumi.Input<String>? computingGroupDescription;
  /// ClickHouse Enterprise Edition instance ID
  final pulumi.Input<String> dbInstanceId;
  /// Computing group read-only
  final pulumi.Input<bool> isReadonly;
  /// Number of computing group nodes
  final pulumi.Input<int> nodeCount;
  /// Computing group node elasticity upper limit
  final pulumi.Input<int> nodeScaleMax;
  /// Lower limit of computing group node elasticity
  final pulumi.Input<int> nodeScaleMin;

  /// Creates a new [ComputingGroupArgs].
  /// [computingGroupDescription] Computing group name
  /// [dbInstanceId] ClickHouse Enterprise Edition instance ID
  /// [isReadonly] Computing group read-only
  /// [nodeCount] Number of computing group nodes
  /// [nodeScaleMax] Computing group node elasticity upper limit
  /// [nodeScaleMin] Lower limit of computing group node elasticity
  ComputingGroupArgs({
    pulumi.Output<String>? computingGroupDescription,
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<bool> isReadonly,
    required pulumi.Output<int> nodeCount,
    required pulumi.Output<int> nodeScaleMax,
    required pulumi.Output<int> nodeScaleMin,
  }) :
      computingGroupDescription = pulumi.Input.asOptionalInput<String>(computingGroupDescription),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      isReadonly = pulumi.Input.asInput<bool>(isReadonly),
      nodeCount = pulumi.Input.asInput<int>(nodeCount),
      nodeScaleMax = pulumi.Input.asInput<int>(nodeScaleMax),
      nodeScaleMin = pulumi.Input.asInput<int>(nodeScaleMin);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computingGroupDescription': ?computingGroupDescription,
      'dbInstanceId': dbInstanceId,
      'isReadonly': isReadonly,
      'nodeCount': nodeCount,
      'nodeScaleMax': nodeScaleMax,
      'nodeScaleMin': nodeScaleMin,
    };
  }

  factory ComputingGroupArgs.fromMap(Map<String, dynamic> map) {
    return ComputingGroupArgs(
      computingGroupDescription: map['computingGroupDescription'] == null ? null : pulumi.Output.create<String>(map['computingGroupDescription'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      isReadonly: pulumi.Output.create<bool>(map['isReadonly'] as bool),
      nodeCount: pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeScaleMax: pulumi.Output.create<int>(map['nodeScaleMax'] as int),
      nodeScaleMin: pulumi.Output.create<int>(map['nodeScaleMin'] as int),
    );
  }
}

