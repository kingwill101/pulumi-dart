// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_role_type_enum_value_response.dart';
import 'placement_group_strategy_enum_value_response.dart';

/// Definition of PlacementGroupConfig
class PlacementGroupConfigResponse {
  /// &lt;p&gt;Role of the instance in the cluster.&lt;/p&gt; &lt;p&gt;Starting with Amazon EMR release 5.23.0, the only supported instance role is &lt;code&gt;MASTER&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<InstanceRoleTypeEnumValueResponse>? instanceRole;
  /// &lt;p&gt;Amazon EC2 Placement Group strategy associated with instance role.&lt;/p&gt; &lt;p&gt;Starting with Amazon EMR release 5.23.0, the only supported placement strategy is &lt;code&gt;SPREAD&lt;/code&gt; for the &lt;code&gt;MASTER&lt;/code&gt; instance role.&lt;/p&gt;
  final pulumi.Input<PlacementGroupStrategyEnumValueResponse>? placementStrategy;

  /// Creates a new [PlacementGroupConfigResponse].
  /// [instanceRole] &lt;p&gt;Role of the instance in the cluster.&lt;/p&gt; &lt;p&gt;Starting with Amazon EMR release 5.23.0, the only supported instance role is &lt;code&gt;MASTER&lt;/code&gt;.&lt;/p&gt;
  /// [placementStrategy] &lt;p&gt;Amazon EC2 Placement Group strategy associated with instance role.&lt;/p&gt; &lt;p&gt;Starting with Amazon EMR release 5.23.0, the only supported placement strategy is &lt;code&gt;SPREAD&lt;/code&gt; for the &lt;code&gt;MASTER&lt;/code&gt; instance role.&lt;/p&gt;
  const PlacementGroupConfigResponse({
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
      instanceRole: (() { final guardedValue = map['instanceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceRoleTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placementStrategy: (() { final guardedValue = map['placementStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementGroupStrategyEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
