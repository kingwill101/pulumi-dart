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
    pulumi.Output<String>? accessType,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? customerOwnedIpv4Pool,
    pulumi.Output<List<EndpointNetworkInterface>>? networkInterfaces,
    pulumi.Output<String>? outpostId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? subnetId,
  }) :
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      customerOwnedIpv4Pool = pulumi.Input.asOptionalInput<String>(customerOwnedIpv4Pool),
      networkInterfaces = pulumi.Input.asOptionalInput<List<EndpointNetworkInterface>>(networkInterfaces),
      outpostId = pulumi.Input.asOptionalInput<String>(outpostId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

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
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : pulumi.Output.create<String>(map['customerOwnedIpv4Pool'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<EndpointNetworkInterface>>(pulumi.Input.decodeList<EndpointNetworkInterface>(map['networkInterfaces'], (value) => EndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      outpostId: map['outpostId'] == null ? null : pulumi.Output.create<String>(map['outpostId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

