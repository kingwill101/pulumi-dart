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
    String? accessType,
    String? customerOwnedIpv4Pool,
    required String outpostId,
    String? region,
    required String securityGroupId,
    required String subnetId,
  }) : accessType = pulumi.Input.asOptionalInput<String>(accessType),
       customerOwnedIpv4Pool = pulumi.Input.asOptionalInput<String>(
         customerOwnedIpv4Pool,
       ),
       outpostId = pulumi.Input.asInput<String>(outpostId),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
       subnetId = pulumi.Input.asInput<String>(subnetId);

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
      accessType: map['accessType'] == null
          ? null
          : map['accessType'] as String,
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null
          ? null
          : map['customerOwnedIpv4Pool'] as String,
      outpostId: map['outpostId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupId: map['securityGroupId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
