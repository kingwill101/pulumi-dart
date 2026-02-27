// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RouteTable.
class RouteTableEc2transitgatewayArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Route Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String> transitGatewayId;

  RouteTableEc2transitgatewayArgs({
    this.region,
    this.tags,
    required this.transitGatewayId,
  });

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

  factory RouteTableEc2transitgatewayArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableEc2transitgatewayArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId: pulumi.Input.asInput<String>(map['transitGatewayId']),
    );
  }
}
