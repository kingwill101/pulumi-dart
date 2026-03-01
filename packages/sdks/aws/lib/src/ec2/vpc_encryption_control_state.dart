// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_encryption_control_resource_exclusions.dart';
import 'vpc_encryption_control_timeouts.dart';

/// Input properties used for looking up and filtering VpcEncryptionControl resources.
class VpcEncryptionControlState {
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
  final pulumi.Input<String>? mode;
  /// Whether to exclude NAT Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? natGatewayExclusion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of exclusions from encryption enforcement.
  /// Will be `nil` if `mode` is `monitor`.
  /// See `resource_exclusions` below
  final pulumi.Input<VpcEncryptionControlResourceExclusions>? resourceExclusions;
  /// The current state of the VPC Encryption Control.
  final pulumi.Input<String>? state;
  /// A message providing additional information about the state of the VPC Encryption Control.
  final pulumi.Input<String>? stateMessage;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<VpcEncryptionControlTimeouts>? timeouts;
  /// Whether to exclude Virtual Private Gateways from encryption enforcement.
  /// Valid values are `disable` or `enable`.
  /// Default is `disable`.
  /// Only valid when `mode` is `enforce`.
  final pulumi.Input<String>? virtualPrivateGatewayExclusion;
  /// The ID of the VPC the VPC Encryption Control is linked to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpcId;
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

  /// Creates a new [VpcEncryptionControlState].
  /// [egressOnlyInternetGatewayExclusion] Whether to exclude Egress-Only Internet Gateways from encryption enforcement.
  /// [elasticFileSystemExclusion] Whether to exclude Elastic File System (EFS) from encryption enforcement.
  /// [internetGatewayExclusion] Whether to exclude Internet Gateways from encryption enforcement.
  /// [lambdaExclusion] Whether to exclude Lambda Functions from encryption enforcement.
  /// [mode] Mode to enable for VPC Encryption Control.
  /// [natGatewayExclusion] Whether to exclude NAT Gateways from encryption enforcement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceExclusions] State of exclusions from encryption enforcement.
  /// [state] The current state of the VPC Encryption Control.
  /// [stateMessage] A message providing additional information about the state of the VPC Encryption Control.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [virtualPrivateGatewayExclusion] Whether to exclude Virtual Private Gateways from encryption enforcement.
  /// [vpcId] The ID of the VPC the VPC Encryption Control is linked to.
  /// [vpcLatticeExclusion] Whether to exclude VPC Lattice from encryption enforcement.
  /// [vpcPeeringExclusion] Whether to exclude peered VPCs from encryption enforcement.
  VpcEncryptionControlState({
    pulumi.Output<String>? egressOnlyInternetGatewayExclusion,
    pulumi.Output<String>? elasticFileSystemExclusion,
    pulumi.Output<String>? internetGatewayExclusion,
    pulumi.Output<String>? lambdaExclusion,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? natGatewayExclusion,
    pulumi.Output<String>? region,
    pulumi.Output<VpcEncryptionControlResourceExclusions>? resourceExclusions,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateMessage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<VpcEncryptionControlTimeouts>? timeouts,
    pulumi.Output<String>? virtualPrivateGatewayExclusion,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpcLatticeExclusion,
    pulumi.Output<String>? vpcPeeringExclusion,
  }) :
      egressOnlyInternetGatewayExclusion = pulumi.Input.asOptionalInput<String>(egressOnlyInternetGatewayExclusion),
      elasticFileSystemExclusion = pulumi.Input.asOptionalInput<String>(elasticFileSystemExclusion),
      internetGatewayExclusion = pulumi.Input.asOptionalInput<String>(internetGatewayExclusion),
      lambdaExclusion = pulumi.Input.asOptionalInput<String>(lambdaExclusion),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      natGatewayExclusion = pulumi.Input.asOptionalInput<String>(natGatewayExclusion),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceExclusions = pulumi.Input.asOptionalInput<VpcEncryptionControlResourceExclusions>(resourceExclusions),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateMessage = pulumi.Input.asOptionalInput<String>(stateMessage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<VpcEncryptionControlTimeouts>(timeouts),
      virtualPrivateGatewayExclusion = pulumi.Input.asOptionalInput<String>(virtualPrivateGatewayExclusion),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcLatticeExclusion = pulumi.Input.asOptionalInput<String>(vpcLatticeExclusion),
      vpcPeeringExclusion = pulumi.Input.asOptionalInput<String>(vpcPeeringExclusion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressOnlyInternetGatewayExclusion': ?egressOnlyInternetGatewayExclusion,
      'elasticFileSystemExclusion': ?elasticFileSystemExclusion,
      'internetGatewayExclusion': ?internetGatewayExclusion,
      'lambdaExclusion': ?lambdaExclusion,
      'mode': ?mode,
      'natGatewayExclusion': ?natGatewayExclusion,
      'region': ?region,
      'resourceExclusions': ?pulumi.Input.mapOptionalInputValue<VpcEncryptionControlResourceExclusions, Map<String, dynamic>>(resourceExclusions, (value) => value.toMap()),
      'state': ?state,
      'stateMessage': ?stateMessage,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcEncryptionControlTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'virtualPrivateGatewayExclusion': ?virtualPrivateGatewayExclusion,
      'vpcId': ?vpcId,
      'vpcLatticeExclusion': ?vpcLatticeExclusion,
      'vpcPeeringExclusion': ?vpcPeeringExclusion,
    };
  }

  factory VpcEncryptionControlState.fromMap(Map<String, dynamic> map) {
    return VpcEncryptionControlState(
      egressOnlyInternetGatewayExclusion: map['egressOnlyInternetGatewayExclusion'] == null ? null : pulumi.Output.create<String>(map['egressOnlyInternetGatewayExclusion'] as String),
      elasticFileSystemExclusion: map['elasticFileSystemExclusion'] == null ? null : pulumi.Output.create<String>(map['elasticFileSystemExclusion'] as String),
      internetGatewayExclusion: map['internetGatewayExclusion'] == null ? null : pulumi.Output.create<String>(map['internetGatewayExclusion'] as String),
      lambdaExclusion: map['lambdaExclusion'] == null ? null : pulumi.Output.create<String>(map['lambdaExclusion'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      natGatewayExclusion: map['natGatewayExclusion'] == null ? null : pulumi.Output.create<String>(map['natGatewayExclusion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceExclusions: map['resourceExclusions'] == null ? null : pulumi.Output.create<VpcEncryptionControlResourceExclusions>(VpcEncryptionControlResourceExclusions.fromMap((map['resourceExclusions'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateMessage: map['stateMessage'] == null ? null : pulumi.Output.create<String>(map['stateMessage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<VpcEncryptionControlTimeouts>(VpcEncryptionControlTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      virtualPrivateGatewayExclusion: map['virtualPrivateGatewayExclusion'] == null ? null : pulumi.Output.create<String>(map['virtualPrivateGatewayExclusion'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcLatticeExclusion: map['vpcLatticeExclusion'] == null ? null : pulumi.Output.create<String>(map['vpcLatticeExclusion'] as String),
      vpcPeeringExclusion: map['vpcPeeringExclusion'] == null ? null : pulumi.Output.create<String>(map['vpcPeeringExclusion'] as String),
    );
  }
}

