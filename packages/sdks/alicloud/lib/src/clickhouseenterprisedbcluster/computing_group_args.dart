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
    this.computingGroupDescription,
    required this.dbInstanceId,
    required this.isReadonly,
    required this.nodeCount,
    required this.nodeScaleMax,
    required this.nodeScaleMin,
  });

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
      computingGroupDescription: (() { final guardedValue = map['computingGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      isReadonly: pulumi.Input.fromValue(map['isReadonly'] as bool),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeScaleMax: pulumi.Input.fromValue(map['nodeScaleMax'] as int),
      nodeScaleMin: pulumi.Input.fromValue(map['nodeScaleMin'] as int),
    );
  }
}

