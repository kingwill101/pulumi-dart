// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_encryption_control_timeouts.dart';

/// {@template pulumi_ec2_vpc_encryption_control_vpc_encryption_control_args_doc}
/// The set of arguments for VpcEncryptionControl.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_encryption_control_vpc_encryption_control_args_doc}
class VpcEncryptionControlArgs {
  /// Whether to exclude Egress-Only Internet Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? egressOnlyInternetGatewayExclusion;
  /// Whether to exclude Elastic File System (EFS) from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? elasticFileSystemExclusion;
  /// Whether to exclude Internet Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? internetGatewayExclusion;
  /// Whether to exclude Lambda Functions from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? lambdaExclusion;
  /// Mode to enable for VPC Encryption Control.
  /// Valid values are `monitor` or `enforce`.
  final pulumi.Input<String> mode;
  /// Whether to exclude NAT Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? natGatewayExclusion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<VpcEncryptionControlTimeouts>? timeouts;
  /// Whether to exclude Virtual Private Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? virtualPrivateGatewayExclusion;
  /// The ID of the VPC the VPC Encryption Control is linked to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;
  /// Whether to exclude VPC Lattice from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? vpcLatticeExclusion;
  /// Whether to exclude peered VPCs from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? vpcPeeringExclusion;

  /// Creates a new [VpcEncryptionControlArgs].
  /// [egressOnlyInternetGatewayExclusion] Whether to exclude Egress-Only Internet Gateways from encryption enforcement.
  /// [elasticFileSystemExclusion] Whether to exclude Elastic File System (EFS) from encryption enforcement.
  /// [internetGatewayExclusion] Whether to exclude Internet Gateways from encryption enforcement.
  /// [lambdaExclusion] Whether to exclude Lambda Functions from encryption enforcement.
  /// [mode] Mode to enable for VPC Encryption Control.
  /// [natGatewayExclusion] Whether to exclude NAT Gateways from encryption enforcement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [virtualPrivateGatewayExclusion] Whether to exclude Virtual Private Gateways from encryption enforcement.
  /// [vpcId] The ID of the VPC the VPC Encryption Control is linked to.
  /// [vpcLatticeExclusion] Whether to exclude VPC Lattice from encryption enforcement.
  /// [vpcPeeringExclusion] Whether to exclude peered VPCs from encryption enforcement.
  VpcEncryptionControlArgs({
    String? egressOnlyInternetGatewayExclusion,
    String? elasticFileSystemExclusion,
    String? internetGatewayExclusion,
    String? lambdaExclusion,
    required String mode,
    String? natGatewayExclusion,
    String? region,
    Map<String, String>? tags,
    VpcEncryptionControlTimeouts? timeouts,
    String? virtualPrivateGatewayExclusion,
    required String vpcId,
    String? vpcLatticeExclusion,
    String? vpcPeeringExclusion,
  }) :
      egressOnlyInternetGatewayExclusion = pulumi.Input.asOptionalInput<String>(egressOnlyInternetGatewayExclusion),
      elasticFileSystemExclusion = pulumi.Input.asOptionalInput<String>(elasticFileSystemExclusion),
      internetGatewayExclusion = pulumi.Input.asOptionalInput<String>(internetGatewayExclusion),
      lambdaExclusion = pulumi.Input.asOptionalInput<String>(lambdaExclusion),
      mode = pulumi.Input.asInput<String>(mode),
      natGatewayExclusion = pulumi.Input.asOptionalInput<String>(natGatewayExclusion),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<VpcEncryptionControlTimeouts>(timeouts),
      virtualPrivateGatewayExclusion = pulumi.Input.asOptionalInput<String>(virtualPrivateGatewayExclusion),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vpcLatticeExclusion = pulumi.Input.asOptionalInput<String>(vpcLatticeExclusion),
      vpcPeeringExclusion = pulumi.Input.asOptionalInput<String>(vpcPeeringExclusion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressOnlyInternetGatewayExclusion': ?egressOnlyInternetGatewayExclusion,
      'elasticFileSystemExclusion': ?elasticFileSystemExclusion,
      'internetGatewayExclusion': ?internetGatewayExclusion,
      'lambdaExclusion': ?lambdaExclusion,
      'mode': mode,
      'natGatewayExclusion': ?natGatewayExclusion,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcEncryptionControlTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'virtualPrivateGatewayExclusion': ?virtualPrivateGatewayExclusion,
      'vpcId': vpcId,
      'vpcLatticeExclusion': ?vpcLatticeExclusion,
      'vpcPeeringExclusion': ?vpcPeeringExclusion,
    };
  }

  factory VpcEncryptionControlArgs.fromMap(Map<String, dynamic> map) {
    return VpcEncryptionControlArgs(
      egressOnlyInternetGatewayExclusion: map['egressOnlyInternetGatewayExclusion'] == null ? null : map['egressOnlyInternetGatewayExclusion'] as String,
      elasticFileSystemExclusion: map['elasticFileSystemExclusion'] == null ? null : map['elasticFileSystemExclusion'] as String,
      internetGatewayExclusion: map['internetGatewayExclusion'] == null ? null : map['internetGatewayExclusion'] as String,
      lambdaExclusion: map['lambdaExclusion'] == null ? null : map['lambdaExclusion'] as String,
      mode: map['mode'] as String,
      natGatewayExclusion: map['natGatewayExclusion'] == null ? null : map['natGatewayExclusion'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : VpcEncryptionControlTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
      virtualPrivateGatewayExclusion: map['virtualPrivateGatewayExclusion'] == null ? null : map['virtualPrivateGatewayExclusion'] as String,
      vpcId: map['vpcId'] as String,
      vpcLatticeExclusion: map['vpcLatticeExclusion'] == null ? null : map['vpcLatticeExclusion'] as String,
      vpcPeeringExclusion: map['vpcPeeringExclusion'] == null ? null : map['vpcPeeringExclusion'] as String,
    );
  }
}

