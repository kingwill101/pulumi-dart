// ignore_for_file: unused_element, unnecessary_cast


class PrefixListPrefixListAssociation {
  /// The ID of the Alibaba Cloud account (primary account) to which the prefix list belongs.
  final String? ownerId;
  /// The ID of the query Prefix List.
  final String? prefixListId;
  /// Reason when the association fails.
  final String? reason;
  /// The region ID of the prefix list to be queried.
  final String? regionId;
  /// The ID of the associated resource.
  final String? resourceId;
  /// The associated resource type. Value:-**vpcRouteTable**: The VPC route table.-**trRouteTable**: the routing table of the forwarding router.
  final String? resourceType;
  /// The ID of the Alibaba Cloud account (primary account) to which the resource bound to the prefix list belongs.
  final String? resourceUid;
  /// Resource attribute fields that represent the status of the resource.
  final String? status;

  /// Creates a new [PrefixListPrefixListAssociation].
  /// [ownerId] The ID of the Alibaba Cloud account (primary account) to which the prefix list belongs.
  /// [prefixListId] The ID of the query Prefix List.
  /// [reason] Reason when the association fails.
  /// [regionId] The region ID of the prefix list to be queried.
  /// [resourceId] The ID of the associated resource.
  /// [resourceType] The associated resource type. Value:-**vpcRouteTable**: The VPC route table.-**trRouteTable**: the routing table of the forwarding router.
  /// [resourceUid] The ID of the Alibaba Cloud account (primary account) to which the resource bound to the prefix list belongs.
  /// [status] Resource attribute fields that represent the status of the resource.
  PrefixListPrefixListAssociation({
    this.ownerId,
    this.prefixListId,
    this.reason,
    this.regionId,
    this.resourceId,
    this.resourceType,
    this.resourceUid,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownerId': ?ownerId,
      'prefixListId': ?prefixListId,
      'reason': ?reason,
      'regionId': ?regionId,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'resourceUid': ?resourceUid,
      'status': ?status,
    };
  }

  factory PrefixListPrefixListAssociation.fromMap(Map<String, dynamic> map) {
    return PrefixListPrefixListAssociation(
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      prefixListId: map['prefixListId'] == null ? null : map['prefixListId'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      resourceUid: map['resourceUid'] == null ? null : map['resourceUid'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

