// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_route_table_route_table_args_doc}
/// The set of arguments for RouteTable.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_route_table_route_table_args_doc}
class RouteTableArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Route Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String> transitGatewayId;

  /// Creates a new [RouteTableArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Route Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  RouteTableArgs({
    String? region,
    Map<String, String>? tags,
    required String transitGatewayId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        transitGatewayId = pulumi.Input.asInput<String>(transitGatewayId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transitGatewayId'] = transitGatewayId;
    return map;
  }

  factory RouteTableArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableArgs(
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
    );
  }
}
