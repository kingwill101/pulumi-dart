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
    pulumi.Output<String>? computingGroupDescription,
    pulumi.Output<List<String>>? computingGroupEndpointNames,
    pulumi.Output<List<String>>? computingGroupEndpoints,
    pulumi.Output<String>? computingGroupId,
    pulumi.Output<List<String>>? computingGroupPublicEndpoints,
    pulumi.Output<String>? computingGroupStatus,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<bool>? isReadonly,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<int>? nodeScaleMax,
    pulumi.Output<int>? nodeScaleMin,
  }) :
      computingGroupDescription = pulumi.Input.asOptionalInput<String>(computingGroupDescription),
      computingGroupEndpointNames = pulumi.Input.asOptionalInput<List<String>>(computingGroupEndpointNames),
      computingGroupEndpoints = pulumi.Input.asOptionalInput<List<String>>(computingGroupEndpoints),
      computingGroupId = pulumi.Input.asOptionalInput<String>(computingGroupId),
      computingGroupPublicEndpoints = pulumi.Input.asOptionalInput<List<String>>(computingGroupPublicEndpoints),
      computingGroupStatus = pulumi.Input.asOptionalInput<String>(computingGroupStatus),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      isReadonly = pulumi.Input.asOptionalInput<bool>(isReadonly),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeScaleMax = pulumi.Input.asOptionalInput<int>(nodeScaleMax),
      nodeScaleMin = pulumi.Input.asOptionalInput<int>(nodeScaleMin);

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
      computingGroupDescription: map['computingGroupDescription'] == null ? null : pulumi.Output.create<String>(map['computingGroupDescription'] as String),
      computingGroupEndpointNames: map['computingGroupEndpointNames'] == null ? null : pulumi.Output.create<List<String>>((map['computingGroupEndpointNames'] as List).cast<String>()),
      computingGroupEndpoints: map['computingGroupEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['computingGroupEndpoints'] as List).cast<String>()),
      computingGroupId: map['computingGroupId'] == null ? null : pulumi.Output.create<String>(map['computingGroupId'] as String),
      computingGroupPublicEndpoints: map['computingGroupPublicEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['computingGroupPublicEndpoints'] as List).cast<String>()),
      computingGroupStatus: map['computingGroupStatus'] == null ? null : pulumi.Output.create<String>(map['computingGroupStatus'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      isReadonly: map['isReadonly'] == null ? null : pulumi.Output.create<bool>(map['isReadonly'] as bool),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeScaleMax: map['nodeScaleMax'] == null ? null : pulumi.Output.create<int>(map['nodeScaleMax'] as int),
      nodeScaleMin: map['nodeScaleMin'] == null ? null : pulumi.Output.create<int>(map['nodeScaleMin'] as int),
    );
  }
}

