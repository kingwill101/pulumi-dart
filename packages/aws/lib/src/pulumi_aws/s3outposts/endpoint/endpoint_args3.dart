// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Endpoint.
class EndpointArgs3 {
  /// Type of access for the network connectivity. Valid values are `Private` or `CustomerOwnedIp`.
  final Input<String>? accessType;

  /// The ID of a Customer Owned IP Pool. For more on customer owned IP addresses see the [User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/local-rack.html#local-gateway-subnet).
  final Input<String>? customerOwnedIpv4Pool;

  /// Identifier of the Outpost to contain this endpoint.
  final Input<String> outpostId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the EC2 Security Group.
  final Input<String> securityGroupId;

  /// Identifier of the EC2 Subnet.
  final Input<String> subnetId;

  EndpointArgs3({
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

  factory EndpointArgs3.fromMap(Map<String, dynamic> map) {
    return EndpointArgs3(
      accessType: Input.asOptionalInput<String>(map['accessType']),
      customerOwnedIpv4Pool:
          Input.asOptionalInput<String>(map['customerOwnedIpv4Pool']),
      outpostId: Input.asInput<String>(map['outpostId']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupId: Input.asInput<String>(map['securityGroupId']),
      subnetId: Input.asInput<String>(map['subnetId']),
    );
  }
}
