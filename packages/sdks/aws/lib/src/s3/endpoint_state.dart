// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_network_interface.dart';

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// Type of access for the network connectivity. Valid values are `Private` or `CustomerOwnedIp`.
  final pulumi.Input<String>? accessType;
  /// Amazon Resource Name (ARN) of the endpoint.
  final pulumi.Input<String>? arn;
  /// VPC CIDR block of the endpoint.
  final pulumi.Input<String>? cidrBlock;
  /// UTC creation time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? creationTime;
  /// The ID of a Customer Owned IP Pool. For more on customer owned IP addresses see the [User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/local-rack.html#local-gateway-subnet).
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  /// Set of nested attributes for associated Elastic Network Interfaces (ENIs).
  final pulumi.Input<List<EndpointNetworkInterface>>? networkInterfaces;
  /// Identifier of the Outpost to contain this endpoint.
  final pulumi.Input<String>? outpostId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the EC2 Security Group.
  final pulumi.Input<String>? securityGroupId;
  /// Identifier of the EC2 Subnet.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [EndpointState].
  /// [accessType] Type of access for the network connectivity. Valid values are `Private` or `CustomerOwnedIp`.
  /// [arn] Amazon Resource Name (ARN) of the endpoint.
  /// [cidrBlock] VPC CIDR block of the endpoint.
  /// [creationTime] UTC creation time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [customerOwnedIpv4Pool] The ID of a Customer Owned IP Pool. For more on customer owned IP addresses see the [User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/local-rack.html#local-gateway-subnet).
  /// [networkInterfaces] Set of nested attributes for associated Elastic Network Interfaces (ENIs).
  /// [outpostId] Identifier of the Outpost to contain this endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] Identifier of the EC2 Security Group.
  /// [subnetId] Identifier of the EC2 Subnet.
  const EndpointState({
    this.accessType,
    this.arn,
    this.cidrBlock,
    this.creationTime,
    this.customerOwnedIpv4Pool,
    this.networkInterfaces,
    this.outpostId,
    this.region,
    this.securityGroupId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'arn': ?arn,
      'cidrBlock': ?cidrBlock,
      'creationTime': ?creationTime,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<EndpointNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<EndpointNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outpostId': ?outpostId,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'subnetId': ?subnetId,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerOwnedIpv4Pool: (() { final guardedValue = map['customerOwnedIpv4Pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointNetworkInterface>(guardedValue, (value) => EndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outpostId: (() { final guardedValue = map['outpostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

