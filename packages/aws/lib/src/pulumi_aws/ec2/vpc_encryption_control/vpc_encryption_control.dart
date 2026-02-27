import 'package:pulumi/pulumi.dart';
import '../vpc_encryption_control_resource_exclusions/vpc_encryption_control_resource_exclusions.dart';
import '../vpc_encryption_control_timeouts/vpc_encryption_control_timeouts.dart';
import 'vpc_encryption_control_args.dart';

/// Manages a VPC Encryption Control.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Encryption Control using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEncryptionControl:VpcEncryptionControl example vpcec-12345678901234567
/// ```
class VpcEncryptionControl extends CustomResource {
  /// Whether to exclude Egress-Only Internet Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final Output<String> egressOnlyInternetGatewayExclusion;

  /// Whether to exclude Elastic File System (EFS) from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final Output<String> elasticFileSystemExclusion;

  /// Whether to exclude Internet Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final Output<String> internetGatewayExclusion;

  /// Whether to exclude Lambda Functions from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final Output<String> lambdaExclusion;

  /// Mode to enable for VPC Encryption Control.
  /// Valid values are `monitor` or `enforce`.
  late final Output<String> mode;

  /// Whether to exclude NAT Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final Output<String> natGatewayExclusion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of exclusions from encryption enforcement.
  /// Will be `nil` if `mode` is `monitor`.
  /// See `resource_exclusions` below
  late final Output<VpcEncryptionControlResourceExclusions> resourceExclusions;

  /// The current state of the VPC Encryption Control.
  late final Output<String> state;

  /// A message providing additional information about the state of the VPC Encryption Control.
  late final Output<String> stateMessage;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<VpcEncryptionControlTimeouts?> timeouts;

  /// Whether to exclude Virtual Private Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final Output<String> virtualPrivateGatewayExclusion;

  /// The ID of the VPC the VPC Encryption Control is linked to.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  /// Whether to exclude VPC Lattice from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final Output<String> vpcLatticeExclusion;

  /// Whether to exclude peered VPCs from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  late final Output<String> vpcPeeringExclusion;

  VpcEncryptionControl(
    String name, {
    VpcEncryptionControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEncryptionControl:VpcEncryptionControl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.egressOnlyInternetGatewayExclusion =
        registerOutput<String>('egressOnlyInternetGatewayExclusion');
    this.elasticFileSystemExclusion =
        registerOutput<String>('elasticFileSystemExclusion');
    this.internetGatewayExclusion =
        registerOutput<String>('internetGatewayExclusion');
    this.lambdaExclusion = registerOutput<String>('lambdaExclusion');
    this.mode = registerOutput<String>('mode');
    this.natGatewayExclusion = registerOutput<String>('natGatewayExclusion');
    this.region = registerOutput<String>('region');
    this.resourceExclusions =
        registerOutput<VpcEncryptionControlResourceExclusions>(
            'resourceExclusions');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<VpcEncryptionControlTimeouts?>('timeouts');
    this.virtualPrivateGatewayExclusion =
        registerOutput<String>('virtualPrivateGatewayExclusion');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcLatticeExclusion = registerOutput<String>('vpcLatticeExclusion');
    this.vpcPeeringExclusion = registerOutput<String>('vpcPeeringExclusion');
  }
}
