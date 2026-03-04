// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipam_ipam_pool_allocations_allocation.dart';

/// Result data returned by getIpamIpamPoolAllocations.
class GetIpamIpamPoolAllocationsResult {
  /// A list of Ipam Pool Allocation Entries. Each element contains the following attributes:
  final List<GetIpamIpamPoolAllocationsAllocation> allocations;

  /// The allocated address segment.
  final String? cidr;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Ipam Pool Allocation IDs.
  final List<String> ids;

  /// The instance ID of the ipam pool allocation.
  final String? ipamPoolAllocationId;

  /// The name of the ipam pool allocation.It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  final String? ipamPoolAllocationName;

  /// The ID of the IPAM Pool.
  final String ipamPoolId;
  final String? nameRegex;

  /// A list of name of Ipam Pool Allocations.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetIpamIpamPoolAllocationsResult].
  /// [allocations] A list of Ipam Pool Allocation Entries. Each element contains the following attributes:
  /// [cidr] The allocated address segment.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Ipam Pool Allocation IDs.
  /// [ipamPoolAllocationId] The instance ID of the ipam pool allocation.
  /// [ipamPoolAllocationName] The name of the ipam pool allocation.It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  /// [ipamPoolId] The ID of the IPAM Pool.
  /// [nameRegex] Optional.
  /// [names] A list of name of Ipam Pool Allocations.
  /// [outputFile] Optional.
  GetIpamIpamPoolAllocationsResult({
    required this.allocations,
    this.cidr,
    required this.id,
    required this.ids,
    this.ipamPoolAllocationId,
    this.ipamPoolAllocationName,
    required this.ipamPoolId,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocations':
          pulumi.Input.encodeList<
            GetIpamIpamPoolAllocationsAllocation,
            Map<String, dynamic>
          >(allocations, (value) => value.toMap()),
      'cidr': ?cidr,
      'id': id,
      'ids': ids,
      'ipamPoolAllocationId': ?ipamPoolAllocationId,
      'ipamPoolAllocationName': ?ipamPoolAllocationName,
      'ipamPoolId': ipamPoolId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetIpamIpamPoolAllocationsResult.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamPoolAllocationsResult(
      allocations:
          pulumi.Input.decodeList<GetIpamIpamPoolAllocationsAllocation>(
            map['allocations']!,
            (value) => GetIpamIpamPoolAllocationsAllocation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      cidr: (() {
        final guardedValue = map['cidr'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipamPoolAllocationId: (() {
        final guardedValue = map['ipamPoolAllocationId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ipamPoolAllocationName: (() {
        final guardedValue = map['ipamPoolAllocationName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ipamPoolId: map['ipamPoolId'] as String,
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
