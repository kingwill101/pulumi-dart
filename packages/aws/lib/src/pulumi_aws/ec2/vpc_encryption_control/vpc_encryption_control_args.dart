// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_encryption_control_timeouts/vpc_encryption_control_timeouts.dart';

/// The set of arguments for VpcEncryptionControl.
class VpcEncryptionControlArgs {
  /// Whether to exclude Egress-Only Internet Gateways from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String>? egressOnlyInternetGatewayExclusion;

  /// Whether to exclude Elastic File System (EFS) from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String>? elasticFileSystemExclusion;

  /// Whether to exclude Internet Gateways from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String>? internetGatewayExclusion;

  /// Whether to exclude Lambda Functions from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String>? lambdaExclusion;

  /// Mode to enable for VPC Encryption Control.
  /// Valid values are <span pulumi-lang-nodejs="`monitor`" pulumi-lang-dotnet="`Monitor`" pulumi-lang-go="`monitor`" pulumi-lang-python="`monitor`" pulumi-lang-yaml="`monitor`" pulumi-lang-java="`monitor`">`monitor`</span> or <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String> mode;

  /// Whether to exclude NAT Gateways from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String>? natGatewayExclusion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<VpcEncryptionControlTimeouts>? timeouts;

  /// Whether to exclude Virtual Private Gateways from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String>? virtualPrivateGatewayExclusion;

  /// The ID of the VPC the VPC Encryption Control is linked to.
  ///
  /// The following arguments are optional:
  final Input<String> vpcId;

  /// Whether to exclude VPC Lattice from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String>? vpcLatticeExclusion;

  /// Whether to exclude peered VPCs from encryption enforcement.
  /// Valid values are <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> or <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  /// Default is <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  /// Only valid when <span pulumi-lang-nodejs="`mode`" pulumi-lang-dotnet="`Mode`" pulumi-lang-go="`mode`" pulumi-lang-python="`mode`" pulumi-lang-yaml="`mode`" pulumi-lang-java="`mode`">`mode`</span> is <span pulumi-lang-nodejs="`enforce`" pulumi-lang-dotnet="`Enforce`" pulumi-lang-go="`enforce`" pulumi-lang-python="`enforce`" pulumi-lang-yaml="`enforce`" pulumi-lang-java="`enforce`">`enforce`</span>.
  final Input<String>? vpcPeeringExclusion;

  VpcEncryptionControlArgs({
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
      map['timeouts'] = Input.mapOptionalInputValue<
          VpcEncryptionControlTimeouts,
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

  factory VpcEncryptionControlArgs.fromMap(Map<String, dynamic> map) {
    return VpcEncryptionControlArgs(
      egressOnlyInternetGatewayExclusion: Input.asOptionalInput<String>(
          map['egressOnlyInternetGatewayExclusion']),
      elasticFileSystemExclusion:
          Input.asOptionalInput<String>(map['elasticFileSystemExclusion']),
      internetGatewayExclusion:
          Input.asOptionalInput<String>(map['internetGatewayExclusion']),
      lambdaExclusion: Input.asOptionalInput<String>(map['lambdaExclusion']),
      mode: Input.asInput<String>(map['mode']),
      natGatewayExclusion:
          Input.asOptionalInput<String>(map['natGatewayExclusion']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<VpcEncryptionControlTimeouts>(map['timeouts']),
      virtualPrivateGatewayExclusion:
          Input.asOptionalInput<String>(map['virtualPrivateGatewayExclusion']),
      vpcId: Input.asInput<String>(map['vpcId']),
      vpcLatticeExclusion:
          Input.asOptionalInput<String>(map['vpcLatticeExclusion']),
      vpcPeeringExclusion:
          Input.asOptionalInput<String>(map['vpcPeeringExclusion']),
    );
  }
}
