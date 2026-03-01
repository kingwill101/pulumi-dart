// ignore_for_file: unused_element, unnecessary_cast

import 'instance_role_type_enum_value.dart';
import 'placement_group_strategy_enum_value.dart';

/// Definition of PlacementGroupConfig
class PlacementGroupConfig {
  /// <p>Role of the instance in the cluster.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported instance role is <code>MASTER</code>.</p>
  final InstanceRoleTypeEnumValue? instanceRole;
  /// <p>Amazon EC2 Placement Group strategy associated with instance role.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported placement strategy is <code>SPREAD</code> for the <code>MASTER</code> instance role.</p>
  final PlacementGroupStrategyEnumValue? placementStrategy;

  /// Creates a new [PlacementGroupConfig].
  /// [instanceRole] <p>Role of the instance in the cluster.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported instance role is <code>MASTER</code>.</p>
  /// [placementStrategy] <p>Amazon EC2 Placement Group strategy associated with instance role.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported placement strategy is <code>SPREAD</code> for the <code>MASTER</code> instance role.</p>
  PlacementGroupConfig({
    this.instanceRole,
    this.placementStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceRole': ?instanceRole == null ? null : instanceRole!.toMap(),
      'placementStrategy': ?placementStrategy == null ? null : placementStrategy!.toMap(),
    };
  }

  factory PlacementGroupConfig.fromMap(Map<String, dynamic> map) {
    return PlacementGroupConfig(
      instanceRole: map['instanceRole'] == null ? null : InstanceRoleTypeEnumValue.fromMap((map['instanceRole'] as Map).cast<String, dynamic>()),
      placementStrategy: map['placementStrategy'] == null ? null : PlacementGroupStrategyEnumValue.fromMap((map['placementStrategy'] as Map).cast<String, dynamic>()),
    );
  }
}

