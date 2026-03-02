// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ComputingGroup resources.
class ComputingGroupState {
  /// Computing group name
  final pulumi.Input<String>? computingGroupDescription;
  /// A list of computing group endpoint names.
  final pulumi.Input<List<String>>? computingGroupEndpointNames;
  /// List of computing group endpoints.
  final pulumi.Input<List<String>>? computingGroupEndpoints;
  /// A resource property field representing the primary resource ID.
  final pulumi.Input<String>? computingGroupId;
  /// List of public endpoints for the computing group.
  final pulumi.Input<List<String>>? computingGroupPublicEndpoints;
  /// Computing group status.
  final pulumi.Input<String>? computingGroupStatus;
  /// ClickHouse Enterprise Edition instance ID
  final pulumi.Input<String>? dbInstanceId;
  /// Computing group read-only
  final pulumi.Input<bool>? isReadonly;
  /// Number of computing group nodes
  final pulumi.Input<int>? nodeCount;
  /// Computing group node elasticity upper limit
  final pulumi.Input<int>? nodeScaleMax;
  /// Lower limit of computing group node elasticity
  final pulumi.Input<int>? nodeScaleMin;

  /// Creates a new [ComputingGroupState].
  /// [computingGroupDescription] Computing group name
  /// [computingGroupEndpointNames] A list of computing group endpoint names.
  /// [computingGroupEndpoints] List of computing group endpoints.
  /// [computingGroupId] A resource property field representing the primary resource ID.
  /// [computingGroupPublicEndpoints] List of public endpoints for the computing group.
  /// [computingGroupStatus] Computing group status.
  /// [dbInstanceId] ClickHouse Enterprise Edition instance ID
  /// [isReadonly] Computing group read-only
  /// [nodeCount] Number of computing group nodes
  /// [nodeScaleMax] Computing group node elasticity upper limit
  /// [nodeScaleMin] Lower limit of computing group node elasticity
  ComputingGroupState({
    this.computingGroupDescription,
    this.computingGroupEndpointNames,
    this.computingGroupEndpoints,
    this.computingGroupId,
    this.computingGroupPublicEndpoints,
    this.computingGroupStatus,
    this.dbInstanceId,
    this.isReadonly,
    this.nodeCount,
    this.nodeScaleMax,
    this.nodeScaleMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computingGroupDescription': ?computingGroupDescription,
      'computingGroupEndpointNames': ?computingGroupEndpointNames,
      'computingGroupEndpoints': ?computingGroupEndpoints,
      'computingGroupId': ?computingGroupId,
      'computingGroupPublicEndpoints': ?computingGroupPublicEndpoints,
      'computingGroupStatus': ?computingGroupStatus,
      'dbInstanceId': ?dbInstanceId,
      'isReadonly': ?isReadonly,
      'nodeCount': ?nodeCount,
      'nodeScaleMax': ?nodeScaleMax,
      'nodeScaleMin': ?nodeScaleMin,
    };
  }

  factory ComputingGroupState.fromMap(Map<String, dynamic> map) {
    return ComputingGroupState(
      computingGroupDescription: map['computingGroupDescription'] == null ? null : (map['computingGroupDescription'] as String).input(),
      computingGroupEndpointNames: map['computingGroupEndpointNames'] == null ? null : ((map['computingGroupEndpointNames'] as List).cast<String>()).input(),
      computingGroupEndpoints: map['computingGroupEndpoints'] == null ? null : ((map['computingGroupEndpoints'] as List).cast<String>()).input(),
      computingGroupId: map['computingGroupId'] == null ? null : (map['computingGroupId'] as String).input(),
      computingGroupPublicEndpoints: map['computingGroupPublicEndpoints'] == null ? null : ((map['computingGroupPublicEndpoints'] as List).cast<String>()).input(),
      computingGroupStatus: map['computingGroupStatus'] == null ? null : (map['computingGroupStatus'] as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      isReadonly: map['isReadonly'] == null ? null : (map['isReadonly'] as bool).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      nodeScaleMax: map['nodeScaleMax'] == null ? null : (map['nodeScaleMax'] as int).input(),
      nodeScaleMin: map['nodeScaleMin'] == null ? null : (map['nodeScaleMin'] as int).input(),
    );
  }
}

