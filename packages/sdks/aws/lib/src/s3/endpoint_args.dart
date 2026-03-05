// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_outposts_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_s3_outposts_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// Type of access for the network connectivity. Valid values are `Private` or `CustomerOwnedIp`.
  final pulumi.Input<String>? accessType;
  /// The ID of a Customer Owned IP Pool. For more on customer owned IP addresses see the [User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/local-rack.html#local-gateway-subnet).
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  /// Identifier of the Outpost to contain this endpoint.
  final pulumi.Input<String> outpostId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the EC2 Security Group.
  final pulumi.Input<String> securityGroupId;
  /// Identifier of the EC2 Subnet.
  final pulumi.Input<String> subnetId;

  /// Creates a new [EndpointArgs].
  /// [accessType] Type of access for the network connectivity. Valid values are `Private` or `CustomerOwnedIp`.
  /// [customerOwnedIpv4Pool] The ID of a Customer Owned IP Pool. For more on customer owned IP addresses see the [User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/local-rack.html#local-gateway-subnet).
  /// [outpostId] Identifier of the Outpost to contain this endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] Identifier of the EC2 Security Group.
  /// [subnetId] Identifier of the EC2 Subnet.
  EndpointArgs({
    this.accessType,
    this.customerOwnedIpv4Pool,
    required this.outpostId,
    this.region,
    required this.securityGroupId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'outpostId': outpostId,
      'region': ?region,
      'securityGroupId': securityGroupId,
      'subnetId': subnetId,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerOwnedIpv4Pool: (() { final guardedValue = map['customerOwnedIpv4Pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostId: pulumi.Input.fromValue(map['outpostId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

