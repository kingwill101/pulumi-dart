// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_role_type_enum_value_response.dart';
import 'placement_group_strategy_enum_value_response.dart';

/// Definition of PlacementGroupConfig
class PlacementGroupConfigResponse {
  /// <p>Role of the instance in the cluster.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported instance role is <code>MASTER</code>.</p>
  final pulumi.Input<InstanceRoleTypeEnumValueResponse>? instanceRole;
  /// <p>Amazon EC2 Placement Group strategy associated with instance role.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported placement strategy is <code>SPREAD</code> for the <code>MASTER</code> instance role.</p>
  final pulumi.Input<PlacementGroupStrategyEnumValueResponse>? placementStrategy;

  /// Creates a new [PlacementGroupConfigResponse].
  /// [instanceRole] <p>Role of the instance in the cluster.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported instance role is <code>MASTER</code>.</p>
  /// [placementStrategy] <p>Amazon EC2 Placement Group strategy associated with instance role.</p> <p>Starting with Amazon EMR release 5.23.0, the only supported placement strategy is <code>SPREAD</code> for the <code>MASTER</code> instance role.</p>
  PlacementGroupConfigResponse({
    this.instanceRole,
    this.placementStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceRole': ?pulumi.Input.mapOptionalInputValue<InstanceRoleTypeEnumValueResponse, Map<String, dynamic>>(instanceRole, (value) => value.toMap()),
      'placementStrategy': ?pulumi.Input.mapOptionalInputValue<PlacementGroupStrategyEnumValueResponse, Map<String, dynamic>>(placementStrategy, (value) => value.toMap()),
    };
  }

  factory PlacementGroupConfigResponse.fromMap(Map<String, dynamic> map) {
    return PlacementGroupConfigResponse(
      instanceRole: map['instanceRole'] == null ? null : (InstanceRoleTypeEnumValueResponse.fromMap((map['instanceRole']! as Map).cast<String, dynamic>())).input(),
      placementStrategy: map['placementStrategy'] == null ? null : (PlacementGroupStrategyEnumValueResponse.fromMap((map['placementStrategy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

