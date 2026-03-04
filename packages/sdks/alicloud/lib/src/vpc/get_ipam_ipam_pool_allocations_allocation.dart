// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpamIpamPoolAllocationsAllocation {
  /// The allocated address segment.
  final pulumi.Input<String> cidr;

  /// Instance creation time.
  final pulumi.Input<String> createTime;

  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;

  /// The description of the ipam pool alloctaion.It must be 1 to 256 characters in length and must start with an English letter or Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String> ipamPoolAllocationDescription;

  /// The instance ID of the ipam pool allocation.
  final pulumi.Input<String> ipamPoolAllocationId;

  /// The name of the ipam pool allocation.It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String> ipamPoolAllocationName;

  /// The ID of the IPAM Pool.
  final pulumi.Input<String> ipamPoolId;

  /// When the IPAM Pool to which CIDR is allocated has the region attribute, this attribute is the IPAM Pool region.When the IPAM Pool to which CIDR is allocated does not have the region attribute, this attribute is the IPAM region.
  final pulumi.Input<String> regionId;

  /// The ID of the resource.
  final pulumi.Input<String> resourceId;

  /// The ID of the Alibaba Cloud account (primary account) to which the resource belongs.
  final pulumi.Input<int> resourceOwnerId;

  /// The region of the resource.
  final pulumi.Input<String> resourceRegionId;

  /// The type of resource. Value:-**VPC**: indicates that the resource type is VPC.-**IpamPool**: indicates that the resource type is a child address pool.-**Custom**: indicates that the resource type is a Custom reserved CIDR block.
  final pulumi.Input<String> resourceType;

  /// The source address segment.
  final pulumi.Input<String> sourceCidr;

  /// The status of the instance. Value:-**Created**: indicates that the creation is complete.
  final pulumi.Input<String> status;

  /// Total number of records.
  final pulumi.Input<int> totalCount;

  /// Creates a new [GetIpamIpamPoolAllocationsAllocation].
  /// [cidr] The allocated address segment.
  /// [createTime] Instance creation time.
  /// [id] The ID of the resource supplied above.
  /// [ipamPoolAllocationDescription] The description of the ipam pool alloctaion.It must be 1 to 256 characters in length and must start with an English letter or Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  /// [ipamPoolAllocationId] The instance ID of the ipam pool allocation.
  /// [ipamPoolAllocationName] The name of the ipam pool allocation.It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  /// [ipamPoolId] The ID of the IPAM Pool.
  /// [regionId] When the IPAM Pool to which CIDR is allocated has the region attribute, this attribute is the IPAM Pool region.When the IPAM Pool to which CIDR is allocated does not have the region attribute, this attribute is the IPAM region.
  /// [resourceId] The ID of the resource.
  /// [resourceOwnerId] The ID of the Alibaba Cloud account (primary account) to which the resource belongs.
  /// [resourceRegionId] The region of the resource.
  /// [resourceType] The type of resource. Value:-**VPC**: indicates that the resource type is VPC.-**IpamPool**: indicates that the resource type is a child address pool.-**Custom**: indicates that the resource type is a Custom reserved CIDR block.
  /// [sourceCidr] The source address segment.
  /// [status] The status of the instance. Value:-**Created**: indicates that the creation is complete.
  /// [totalCount] Total number of records.
  GetIpamIpamPoolAllocationsAllocation({
    required this.cidr,
    required this.createTime,
    required this.id,
    required this.ipamPoolAllocationDescription,
    required this.ipamPoolAllocationId,
    required this.ipamPoolAllocationName,
    required this.ipamPoolId,
    required this.regionId,
    required this.resourceId,
    required this.resourceOwnerId,
    required this.resourceRegionId,
    required this.resourceType,
    required this.sourceCidr,
    required this.status,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'createTime': createTime,
      'id': id,
      'ipamPoolAllocationDescription': ipamPoolAllocationDescription,
      'ipamPoolAllocationId': ipamPoolAllocationId,
      'ipamPoolAllocationName': ipamPoolAllocationName,
      'ipamPoolId': ipamPoolId,
      'regionId': regionId,
      'resourceId': resourceId,
      'resourceOwnerId': resourceOwnerId,
      'resourceRegionId': resourceRegionId,
      'resourceType': resourceType,
      'sourceCidr': sourceCidr,
      'status': status,
      'totalCount': totalCount,
    };
  }

  factory GetIpamIpamPoolAllocationsAllocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIpamIpamPoolAllocationsAllocation(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipamPoolAllocationDescription: pulumi.Input.fromValue(
        map['ipamPoolAllocationDescription'] as String,
      ),
      ipamPoolAllocationId: pulumi.Input.fromValue(
        map['ipamPoolAllocationId'] as String,
      ),
      ipamPoolAllocationName: pulumi.Input.fromValue(
        map['ipamPoolAllocationName'] as String,
      ),
      ipamPoolId: pulumi.Input.fromValue(map['ipamPoolId'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceOwnerId: pulumi.Input.fromValue(map['resourceOwnerId'] as int),
      resourceRegionId: pulumi.Input.fromValue(
        map['resourceRegionId'] as String,
      ),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      sourceCidr: pulumi.Input.fromValue(map['sourceCidr'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      totalCount: pulumi.Input.fromValue(map['totalCount'] as int),
    );
  }
}
