// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipam_ipam_pool_ipam_ipam_pool_args_doc}
/// The set of arguments for IpamIpamPool.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipam_ipam_pool_ipam_ipam_pool_args_doc}
class IpamIpamPoolArgs {
  /// The default network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int>? allocationDefaultCidrMask;
  /// The maximum network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int>? allocationMaxCidrMask;
  /// The minimum Network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int>? allocationMinCidrMask;
  /// Whether the automatic import function is enabled for the address pool.
  final pulumi.Input<bool>? autoImport;
  /// Whether to clear the default network mask of the IPAM address pool. Value:
  final pulumi.Input<bool>? clearAllocationDefaultCidrMask;
  /// The IP protocol version. Currently, only `IPv4` is supported * *.
  final pulumi.Input<String>? ipVersion;
  /// The description of the IPAM address pool.
  /// It must be 2 to 256 characters in length and must start with an English letter or a Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String>? ipamPoolDescription;
  /// The name of the resource.
  final pulumi.Input<String>? ipamPoolName;
  /// Ipam scope id.
  final pulumi.Input<String> ipamScopeId;
  /// The effective region of the IPAM address pool.
  final pulumi.Input<String>? poolRegionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The instance ID of the source IPAM address pool.
  ///
  /// > **NOTE:**  If this parameter is not entered, the created address pool is the parent address pool.
  final pulumi.Input<String>? sourceIpamPoolId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamPoolArgs].
  /// [allocationDefaultCidrMask] The default network mask assigned by the IPAM address pool.
  /// [allocationMaxCidrMask] The maximum network mask assigned by the IPAM address pool.
  /// [allocationMinCidrMask] The minimum Network mask assigned by the IPAM address pool.
  /// [autoImport] Whether the automatic import function is enabled for the address pool.
  /// [clearAllocationDefaultCidrMask] Whether to clear the default network mask of the IPAM address pool. Value:
  /// [ipVersion] The IP protocol version. Currently, only `IPv4` is supported * *.
  /// [ipamPoolDescription] The description of the IPAM address pool.
  /// [ipamPoolName] The name of the resource.
  /// [ipamScopeId] Ipam scope id.
  /// [poolRegionId] The effective region of the IPAM address pool.
  /// [resourceGroupId] The ID of the resource group.
  /// [sourceIpamPoolId] The instance ID of the source IPAM address pool.
  /// [tags] The tag of the resource.
  IpamIpamPoolArgs({
    pulumi.Output<int>? allocationDefaultCidrMask,
    pulumi.Output<int>? allocationMaxCidrMask,
    pulumi.Output<int>? allocationMinCidrMask,
    pulumi.Output<bool>? autoImport,
    pulumi.Output<bool>? clearAllocationDefaultCidrMask,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? ipamPoolDescription,
    pulumi.Output<String>? ipamPoolName,
    required pulumi.Output<String> ipamScopeId,
    pulumi.Output<String>? poolRegionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? sourceIpamPoolId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      allocationDefaultCidrMask = pulumi.Input.asOptionalInput<int>(allocationDefaultCidrMask),
      allocationMaxCidrMask = pulumi.Input.asOptionalInput<int>(allocationMaxCidrMask),
      allocationMinCidrMask = pulumi.Input.asOptionalInput<int>(allocationMinCidrMask),
      autoImport = pulumi.Input.asOptionalInput<bool>(autoImport),
      clearAllocationDefaultCidrMask = pulumi.Input.asOptionalInput<bool>(clearAllocationDefaultCidrMask),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      ipamPoolDescription = pulumi.Input.asOptionalInput<String>(ipamPoolDescription),
      ipamPoolName = pulumi.Input.asOptionalInput<String>(ipamPoolName),
      ipamScopeId = pulumi.Input.asInput<String>(ipamScopeId),
      poolRegionId = pulumi.Input.asOptionalInput<String>(poolRegionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sourceIpamPoolId = pulumi.Input.asOptionalInput<String>(sourceIpamPoolId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationDefaultCidrMask': ?allocationDefaultCidrMask,
      'allocationMaxCidrMask': ?allocationMaxCidrMask,
      'allocationMinCidrMask': ?allocationMinCidrMask,
      'autoImport': ?autoImport,
      'clearAllocationDefaultCidrMask': ?clearAllocationDefaultCidrMask,
      'ipVersion': ?ipVersion,
      'ipamPoolDescription': ?ipamPoolDescription,
      'ipamPoolName': ?ipamPoolName,
      'ipamScopeId': ipamScopeId,
      'poolRegionId': ?poolRegionId,
      'resourceGroupId': ?resourceGroupId,
      'sourceIpamPoolId': ?sourceIpamPoolId,
      'tags': ?tags,
    };
  }

  factory IpamIpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return IpamIpamPoolArgs(
      allocationDefaultCidrMask: map['allocationDefaultCidrMask'] == null ? null : pulumi.Output.create<int>(map['allocationDefaultCidrMask'] as int),
      allocationMaxCidrMask: map['allocationMaxCidrMask'] == null ? null : pulumi.Output.create<int>(map['allocationMaxCidrMask'] as int),
      allocationMinCidrMask: map['allocationMinCidrMask'] == null ? null : pulumi.Output.create<int>(map['allocationMinCidrMask'] as int),
      autoImport: map['autoImport'] == null ? null : pulumi.Output.create<bool>(map['autoImport'] as bool),
      clearAllocationDefaultCidrMask: map['clearAllocationDefaultCidrMask'] == null ? null : pulumi.Output.create<bool>(map['clearAllocationDefaultCidrMask'] as bool),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      ipamPoolDescription: map['ipamPoolDescription'] == null ? null : pulumi.Output.create<String>(map['ipamPoolDescription'] as String),
      ipamPoolName: map['ipamPoolName'] == null ? null : pulumi.Output.create<String>(map['ipamPoolName'] as String),
      ipamScopeId: pulumi.Output.create<String>(map['ipamScopeId'] as String),
      poolRegionId: map['poolRegionId'] == null ? null : pulumi.Output.create<String>(map['poolRegionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sourceIpamPoolId: map['sourceIpamPoolId'] == null ? null : pulumi.Output.create<String>(map['sourceIpamPoolId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

