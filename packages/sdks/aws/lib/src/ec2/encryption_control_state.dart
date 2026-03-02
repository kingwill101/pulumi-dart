// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_control_resource_exclusions.dart';
import 'encryption_control_timeouts.dart';

/// Input properties used for looking up and filtering EncryptionControl resources.
class EncryptionControlState {
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
  final pulumi.Input<EncryptionControlResourceExclusions>? resourceExclusions;
  /// The current state of the VPC Encryption Control.
  final pulumi.Input<String>? state;
  /// A message providing additional information about the state of the VPC Encryption Control.
  final pulumi.Input<String>? stateMessage;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<EncryptionControlTimeouts>? timeouts;
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

  /// Creates a new [EncryptionControlState].
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
  EncryptionControlState({
    this.egressOnlyInternetGatewayExclusion,
    this.elasticFileSystemExclusion,
    this.internetGatewayExclusion,
    this.lambdaExclusion,
    this.mode,
    this.natGatewayExclusion,
    this.region,
    this.resourceExclusions,
    this.state,
    this.stateMessage,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.virtualPrivateGatewayExclusion,
    this.vpcId,
    this.vpcLatticeExclusion,
    this.vpcPeeringExclusion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressOnlyInternetGatewayExclusion': ?egressOnlyInternetGatewayExclusion,
      'elasticFileSystemExclusion': ?elasticFileSystemExclusion,
      'internetGatewayExclusion': ?internetGatewayExclusion,
      'lambdaExclusion': ?lambdaExclusion,
      'mode': ?mode,
      'natGatewayExclusion': ?natGatewayExclusion,
      'region': ?region,
      'resourceExclusions': ?pulumi.Input.mapOptionalInputValue<EncryptionControlResourceExclusions, Map<String, dynamic>>(resourceExclusions, (value) => value.toMap()),
      'state': ?state,
      'stateMessage': ?stateMessage,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EncryptionControlTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'virtualPrivateGatewayExclusion': ?virtualPrivateGatewayExclusion,
      'vpcId': ?vpcId,
      'vpcLatticeExclusion': ?vpcLatticeExclusion,
      'vpcPeeringExclusion': ?vpcPeeringExclusion,
    };
  }

  factory EncryptionControlState.fromMap(Map<String, dynamic> map) {
    return EncryptionControlState(
      egressOnlyInternetGatewayExclusion: map['egressOnlyInternetGatewayExclusion'] == null ? null : (map['egressOnlyInternetGatewayExclusion'] as String).input(),
      elasticFileSystemExclusion: map['elasticFileSystemExclusion'] == null ? null : (map['elasticFileSystemExclusion'] as String).input(),
      internetGatewayExclusion: map['internetGatewayExclusion'] == null ? null : (map['internetGatewayExclusion'] as String).input(),
      lambdaExclusion: map['lambdaExclusion'] == null ? null : (map['lambdaExclusion'] as String).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      natGatewayExclusion: map['natGatewayExclusion'] == null ? null : (map['natGatewayExclusion'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceExclusions: map['resourceExclusions'] == null ? null : (EncryptionControlResourceExclusions.fromMap((map['resourceExclusions'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      stateMessage: map['stateMessage'] == null ? null : (map['stateMessage'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (EncryptionControlTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      virtualPrivateGatewayExclusion: map['virtualPrivateGatewayExclusion'] == null ? null : (map['virtualPrivateGatewayExclusion'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vpcLatticeExclusion: map['vpcLatticeExclusion'] == null ? null : (map['vpcLatticeExclusion'] as String).input(),
      vpcPeeringExclusion: map['vpcPeeringExclusion'] == null ? null : (map['vpcPeeringExclusion'] as String).input(),
    );
  }
}

