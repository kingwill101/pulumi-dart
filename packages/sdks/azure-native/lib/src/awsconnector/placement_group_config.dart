// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_role_type_enum_value.dart';
import 'placement_group_strategy_enum_value.dart';

/// Definition of PlacementGroupConfig
class PlacementGroupConfig {
  /// <p>Role of the instance in the cluster.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported instance role is <code>MASTER</code>.</p>
  final pulumi.Input<InstanceRoleTypeEnumValue>? instanceRole;
  /// <p>Amazon EC2 Placement Group strategy associated with instance role.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported placement strategy is <code>SPREAD</code> for the <code>MASTER</code> instance role.</p>
  final pulumi.Input<PlacementGroupStrategyEnumValue>? placementStrategy;

  /// Creates a new [PlacementGroupConfig].
  /// [instanceRole] <p>Role of the instance in the cluster.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported instance role is <code>MASTER</code>.</p>
  /// [placementStrategy] <p>Amazon EC2 Placement Group strategy associated with instance role.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported placement strategy is <code>SPREAD</code> for the <code>MASTER</code> instance role.</p>
  PlacementGroupConfig({
    this.instanceRole,
    this.placementStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceRole': ?pulumi.Input.mapOptionalInputValue<InstanceRoleTypeEnumValue, Map<String, dynamic>>(instanceRole, (value) => value.toMap()),
      'placementStrategy': ?pulumi.Input.mapOptionalInputValue<PlacementGroupStrategyEnumValue, Map<String, dynamic>>(placementStrategy, (value) => value.toMap()),
    };
  }

  factory PlacementGroupConfig.fromMap(Map<String, dynamic> map) {
    return PlacementGroupConfig(
      instanceRole: map['instanceRole'] == null ? null : (InstanceRoleTypeEnumValue.fromMap((map['instanceRole'] as Map).cast<String, dynamic>())).input(),
      placementStrategy: map['placementStrategy'] == null ? null : (PlacementGroupStrategyEnumValue.fromMap((map['placementStrategy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

