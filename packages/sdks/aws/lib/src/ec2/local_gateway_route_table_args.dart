// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_gateway_route_table_timeouts.dart';

/// {@template pulumi_ec2_local_gateway_route_table_local_gateway_route_table_args_doc}
/// The set of arguments for LocalGatewayRouteTable.
/// {@endtemplate}
/// {@macro pulumi_ec2_local_gateway_route_table_local_gateway_route_table_args_doc}
class LocalGatewayRouteTableArgs {
  /// Identifier of the EC2 Local Gateway.
  final pulumi.Input<String> localGatewayId;
  /// Mode of the Local Gateway Route Table. Valid values: `direct-vpc-routing`, `coip`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<LocalGatewayRouteTableTimeouts?>? timeouts;

  /// Creates a new [LocalGatewayRouteTableArgs].
  /// [localGatewayId] Identifier of the EC2 Local Gateway.
  /// [mode] Mode of the Local Gateway Route Table. Valid values: `direct-vpc-routing`, `coip`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const LocalGatewayRouteTableArgs({
    required this.localGatewayId,
    required this.mode,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localGatewayId': localGatewayId,
      'mode': mode,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<LocalGatewayRouteTableTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory LocalGatewayRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteTableArgs(
      localGatewayId: pulumi.Input.fromValue(map['localGatewayId'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalGatewayRouteTableTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
