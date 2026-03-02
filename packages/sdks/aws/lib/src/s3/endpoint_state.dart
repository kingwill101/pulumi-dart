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
  EndpointState({
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
      accessType: map['accessType'] == null ? null : ((map['accessType'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      cidrBlock: map['cidrBlock'] == null ? null : ((map['cidrBlock'] as String).input()).input(),
      creationTime: map['creationTime'] == null ? null : ((map['creationTime'] as String).input()).input(),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : ((map['customerOwnedIpv4Pool'] as String).input()).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : ((pulumi.Input.decodeList<EndpointNetworkInterface>(map['networkInterfaces']!, (value) => EndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      outpostId: map['outpostId'] == null ? null : ((map['outpostId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupId: map['securityGroupId'] == null ? null : ((map['securityGroupId'] as String).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
    );
  }
}

