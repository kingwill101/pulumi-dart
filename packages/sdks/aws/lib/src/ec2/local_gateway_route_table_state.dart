// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_gateway_route_table_timeouts.dart';

/// Input properties used for looking up and filtering LocalGatewayRouteTable resources.
class LocalGatewayRouteTableState {
  /// ARN of the Local Gateway Route Table.
  final pulumi.Input<String>? arn;
  /// Identifier of the EC2 Local Gateway.
  final pulumi.Input<String>? localGatewayId;
  /// Identifier of the Local Gateway Route Table.
  final pulumi.Input<String>? localGatewayRouteTableId;
  /// Mode of the Local Gateway Route Table. Valid values: `direct-vpc-routing`, `coip`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? mode;
  /// ARN of the Outpost.
  final pulumi.Input<String>? outpostArn;
  /// AWS account identifier that owns the Local Gateway Route Table.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the Local Gateway Route Table.
  final pulumi.Input<String>? state;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<LocalGatewayRouteTableTimeouts>? timeouts;

  /// Creates a new [LocalGatewayRouteTableState].
  /// [arn] ARN of the Local Gateway Route Table.
  /// [localGatewayId] Identifier of the EC2 Local Gateway.
  /// [localGatewayRouteTableId] Identifier of the Local Gateway Route Table.
  /// [mode] Mode of the Local Gateway Route Table. Valid values: `direct-vpc-routing`, `coip`.
  /// [outpostArn] ARN of the Outpost.
  /// [ownerId] AWS account identifier that owns the Local Gateway Route Table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the Local Gateway Route Table.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const LocalGatewayRouteTableState({
    this.arn,
    this.localGatewayId,
    this.localGatewayRouteTableId,
    this.mode,
    this.outpostArn,
    this.ownerId,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'localGatewayId': ?localGatewayId,
      'localGatewayRouteTableId': ?localGatewayRouteTableId,
      'mode': ?mode,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<LocalGatewayRouteTableTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory LocalGatewayRouteTableState.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteTableState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayId: (() { final guardedValue = map['localGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayRouteTableId: (() { final guardedValue = map['localGatewayRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalGatewayRouteTableTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
