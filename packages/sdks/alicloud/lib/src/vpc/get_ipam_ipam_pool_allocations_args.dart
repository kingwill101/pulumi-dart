// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipam_ipam_pool_allocations_get_ipam_ipam_pool_allocations_args_doc}
/// Arguments for getIpamIpamPoolAllocations.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipam_ipam_pool_allocations_get_ipam_ipam_pool_allocations_args_doc}
class GetIpamIpamPoolAllocationsArgs {
  /// The allocated address segment.
  final pulumi.Input<String>? cidr;
  /// A list of Ipam Pool Allocation IDs.
  final pulumi.Input<List<String>>? ids;
  /// The instance ID of the ipam pool allocation.
  final pulumi.Input<String>? ipamPoolAllocationId;
  /// The name of the ipam pool allocation.It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? ipamPoolAllocationName;
  /// The ID of the IPAM Pool.
  final pulumi.Input<String> ipamPoolId;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetIpamIpamPoolAllocationsArgs].
  /// [cidr] The allocated address segment.
  /// [ids] A list of Ipam Pool Allocation IDs.
  /// [ipamPoolAllocationId] The instance ID of the ipam pool allocation.
  /// [ipamPoolAllocationName] The name of the ipam pool allocation.It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  /// [ipamPoolId] The ID of the IPAM Pool.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetIpamIpamPoolAllocationsArgs({
    pulumi.Output<String>? cidr,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? ipamPoolAllocationId,
    pulumi.Output<String>? ipamPoolAllocationName,
    required pulumi.Output<String> ipamPoolId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipamPoolAllocationId = pulumi.Input.asOptionalInput<String>(ipamPoolAllocationId),
      ipamPoolAllocationName = pulumi.Input.asOptionalInput<String>(ipamPoolAllocationName),
      ipamPoolId = pulumi.Input.asInput<String>(ipamPoolId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'ids': ?ids,
      'ipamPoolAllocationId': ?ipamPoolAllocationId,
      'ipamPoolAllocationName': ?ipamPoolAllocationName,
      'ipamPoolId': ipamPoolId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetIpamIpamPoolAllocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamPoolAllocationsArgs(
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      ipamPoolAllocationId: map['ipamPoolAllocationId'] == null ? null : pulumi.Output.create<String>(map['ipamPoolAllocationId'] as String),
      ipamPoolAllocationName: map['ipamPoolAllocationName'] == null ? null : pulumi.Output.create<String>(map['ipamPoolAllocationName'] as String),
      ipamPoolId: pulumi.Output.create<String>(map['ipamPoolId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

