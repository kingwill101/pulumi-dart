// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RouteTableAssociation.
class RouteTableAssociationArgs {
  /// The gateway ID to create an association. Conflicts with <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>.
  final Input<String>? gatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the routing table to associate with.
  ///
  /// > **NOTE:** Please note that one of either <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span> or <span pulumi-lang-nodejs="`gatewayId`" pulumi-lang-dotnet="`GatewayId`" pulumi-lang-go="`gatewayId`" pulumi-lang-python="`gateway_id`" pulumi-lang-yaml="`gatewayId`" pulumi-lang-java="`gatewayId`">`gateway_id`</span> is required.
  final Input<String> routeTableId;

  /// The subnet ID to create an association. Conflicts with <span pulumi-lang-nodejs="`gatewayId`" pulumi-lang-dotnet="`GatewayId`" pulumi-lang-go="`gatewayId`" pulumi-lang-python="`gateway_id`" pulumi-lang-yaml="`gatewayId`" pulumi-lang-java="`gatewayId`">`gateway_id`</span>.
  final Input<String>? subnetId;

  RouteTableAssociationArgs({
    this.gatewayId,
    this.region,
    required this.routeTableId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gatewayIdValue = gatewayId;
    if (gatewayIdValue != null) {
      map['gatewayId'] = gatewayIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeTableId'] = routeTableId;
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    return map;
  }

  factory RouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableAssociationArgs(
      gatewayId: Input.asOptionalInput<String>(map['gatewayId']),
      region: Input.asOptionalInput<String>(map['region']),
      routeTableId: Input.asInput<String>(map['routeTableId']),
      subnetId: Input.asOptionalInput<String>(map['subnetId']),
    );
  }
}
