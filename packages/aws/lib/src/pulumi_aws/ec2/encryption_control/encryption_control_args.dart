// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../encryption_control_timeouts/encryption_control_timeouts.dart';

/// The set of arguments for EncryptionControl.
class EncryptionControlArgs {
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
  final pulumi.Input<EncryptionControlTimeouts>? timeouts;

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

  EncryptionControlArgs({
    this.egressOnlyInternetGatewayExclusion,
    this.elasticFileSystemExclusion,
    this.internetGatewayExclusion,
    this.lambdaExclusion,
    required this.mode,
    this.natGatewayExclusion,
    this.region,
    this.tags,
    this.timeouts,
    this.virtualPrivateGatewayExclusion,
    required this.vpcId,
    this.vpcLatticeExclusion,
    this.vpcPeeringExclusion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressOnlyInternetGatewayExclusionValue =
        egressOnlyInternetGatewayExclusion;
    if (egressOnlyInternetGatewayExclusionValue != null) {
      map['egressOnlyInternetGatewayExclusion'] =
          egressOnlyInternetGatewayExclusionValue;
    }
    final elasticFileSystemExclusionValue = elasticFileSystemExclusion;
    if (elasticFileSystemExclusionValue != null) {
      map['elasticFileSystemExclusion'] = elasticFileSystemExclusionValue;
    }
    final internetGatewayExclusionValue = internetGatewayExclusion;
    if (internetGatewayExclusionValue != null) {
      map['internetGatewayExclusion'] = internetGatewayExclusionValue;
    }
    final lambdaExclusionValue = lambdaExclusion;
    if (lambdaExclusionValue != null) {
      map['lambdaExclusion'] = lambdaExclusionValue;
    }
    map['mode'] = mode;
    final natGatewayExclusionValue = natGatewayExclusion;
    if (natGatewayExclusionValue != null) {
      map['natGatewayExclusion'] = natGatewayExclusionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          EncryptionControlTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final virtualPrivateGatewayExclusionValue = virtualPrivateGatewayExclusion;
    if (virtualPrivateGatewayExclusionValue != null) {
      map['virtualPrivateGatewayExclusion'] =
          virtualPrivateGatewayExclusionValue;
    }
    map['vpcId'] = vpcId;
    final vpcLatticeExclusionValue = vpcLatticeExclusion;
    if (vpcLatticeExclusionValue != null) {
      map['vpcLatticeExclusion'] = vpcLatticeExclusionValue;
    }
    final vpcPeeringExclusionValue = vpcPeeringExclusion;
    if (vpcPeeringExclusionValue != null) {
      map['vpcPeeringExclusion'] = vpcPeeringExclusionValue;
    }
    return map;
  }

  factory EncryptionControlArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionControlArgs(
      egressOnlyInternetGatewayExclusion: pulumi.Input.asOptionalInput<String>(
          map['egressOnlyInternetGatewayExclusion']),
      elasticFileSystemExclusion: pulumi.Input.asOptionalInput<String>(
          map['elasticFileSystemExclusion']),
      internetGatewayExclusion:
          pulumi.Input.asOptionalInput<String>(map['internetGatewayExclusion']),
      lambdaExclusion:
          pulumi.Input.asOptionalInput<String>(map['lambdaExclusion']),
      mode: pulumi.Input.asInput<String>(map['mode']),
      natGatewayExclusion:
          pulumi.Input.asOptionalInput<String>(map['natGatewayExclusion']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<EncryptionControlTimeouts>(
          map['timeouts']),
      virtualPrivateGatewayExclusion: pulumi.Input.asOptionalInput<String>(
          map['virtualPrivateGatewayExclusion']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
      vpcLatticeExclusion:
          pulumi.Input.asOptionalInput<String>(map['vpcLatticeExclusion']),
      vpcPeeringExclusion:
          pulumi.Input.asOptionalInput<String>(map['vpcPeeringExclusion']),
    );
  }
}
