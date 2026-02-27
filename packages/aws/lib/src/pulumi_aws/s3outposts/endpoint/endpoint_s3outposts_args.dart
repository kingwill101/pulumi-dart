// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Endpoint.
class EndpointS3outpostsArgs {
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

  EndpointS3outpostsArgs({
    this.accessType,
    this.customerOwnedIpv4Pool,
    required this.outpostId,
    this.region,
    required this.securityGroupId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTypeValue = accessType;
    if (accessTypeValue != null) {
      map['accessType'] = accessTypeValue;
    }
    final customerOwnedIpv4PoolValue = customerOwnedIpv4Pool;
    if (customerOwnedIpv4PoolValue != null) {
      map['customerOwnedIpv4Pool'] = customerOwnedIpv4PoolValue;
    }
    map['outpostId'] = outpostId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupId'] = securityGroupId;
    map['subnetId'] = subnetId;
    return map;
  }

  factory EndpointS3outpostsArgs.fromMap(Map<String, dynamic> map) {
    return EndpointS3outpostsArgs(
      accessType: pulumi.Input.asOptionalInput<String>(map['accessType']),
      customerOwnedIpv4Pool:
          pulumi.Input.asOptionalInput<String>(map['customerOwnedIpv4Pool']),
      outpostId: pulumi.Input.asInput<String>(map['outpostId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupId: pulumi.Input.asInput<String>(map['securityGroupId']),
      subnetId: pulumi.Input.asInput<String>(map['subnetId']),
    );
  }
}
