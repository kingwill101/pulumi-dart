// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_control_resource_exclusions.dart';
import 'encryption_control_timeouts.dart';

/// Input properties used for looking up and filtering EncryptionControl resources.
class EncryptionControlState {
  /// Whether to exclude Egress-Only Internet Gateways from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  final pulumi.Input<String?>? egressOnlyInternetGatewayExclusion;
  /// Whether to exclude Elastic File System (EFS) from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  final pulumi.Input<String?>? elasticFileSystemExclusion;
  /// Whether to exclude Internet Gateways from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  final pulumi.Input<String?>? internetGatewayExclusion;
  /// Whether to exclude Lambda Functions from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  final pulumi.Input<String?>? lambdaExclusion;
  /// Mode to enable for VPC Encryption Control. Valid values are `monitor` or `enforce`.
  final pulumi.Input<String?>? mode;
  /// Whether to exclude NAT Gateways from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  final pulumi.Input<String?>? natGatewayExclusion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// State of exclusions from encryption enforcement. Will be `nil` if `mode` is `monitor`. See `resourceExclusions` below.
  final pulumi.Input<EncryptionControlResourceExclusions?>? resourceExclusions;
  /// Encryption enforcement state for peered VPCs.
  final pulumi.Input<String?>? state;
  /// Message providing additional information about the encryption enforcement state.
  final pulumi.Input<String?>? stateMessage;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<EncryptionControlTimeouts?>? timeouts;
  /// Whether to exclude Virtual Private Gateways from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  final pulumi.Input<String?>? virtualPrivateGatewayExclusion;
  /// ID of the VPC the VPC Encryption Control is linked to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? vpcId;
  /// Whether to exclude VPC Lattice from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  final pulumi.Input<String?>? vpcLatticeExclusion;
  /// Whether to exclude peered VPCs from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  final pulumi.Input<String?>? vpcPeeringExclusion;

  /// Creates a new [EncryptionControlState].
  /// [egressOnlyInternetGatewayExclusion] Whether to exclude Egress-Only Internet Gateways from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  /// [elasticFileSystemExclusion] Whether to exclude Elastic File System (EFS) from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  /// [internetGatewayExclusion] Whether to exclude Internet Gateways from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  /// [lambdaExclusion] Whether to exclude Lambda Functions from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  /// [mode] Mode to enable for VPC Encryption Control. Valid values are `monitor` or `enforce`.
  /// [natGatewayExclusion] Whether to exclude NAT Gateways from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceExclusions] State of exclusions from encryption enforcement. Will be `nil` if `mode` is `monitor`. See `resourceExclusions` below.
  /// [state] Encryption enforcement state for peered VPCs.
  /// [stateMessage] Message providing additional information about the encryption enforcement state.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [virtualPrivateGatewayExclusion] Whether to exclude Virtual Private Gateways from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  /// [vpcId] ID of the VPC the VPC Encryption Control is linked to.
  /// [vpcLatticeExclusion] Whether to exclude VPC Lattice from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  /// [vpcPeeringExclusion] Whether to exclude peered VPCs from encryption enforcement. Valid values are `disable` or `enable`. Default is `disable`. Only valid when `mode` is `enforce`.
  const EncryptionControlState({
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
      egressOnlyInternetGatewayExclusion: (() { final guardedValue = map['egressOnlyInternetGatewayExclusion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticFileSystemExclusion: (() { final guardedValue = map['elasticFileSystemExclusion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetGatewayExclusion: (() { final guardedValue = map['internetGatewayExclusion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambdaExclusion: (() { final guardedValue = map['lambdaExclusion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayExclusion: (() { final guardedValue = map['natGatewayExclusion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceExclusions: (() { final guardedValue = map['resourceExclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionControlResourceExclusions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionControlTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualPrivateGatewayExclusion: (() { final guardedValue = map['virtualPrivateGatewayExclusion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcLatticeExclusion: (() { final guardedValue = map['vpcLatticeExclusion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringExclusion: (() { final guardedValue = map['vpcPeeringExclusion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
