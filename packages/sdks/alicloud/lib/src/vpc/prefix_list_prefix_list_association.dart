// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrefixListPrefixListAssociation {
  /// The ID of the Alibaba Cloud account (primary account) to which the prefix list belongs.
  final pulumi.Input<String>? ownerId;
  /// The ID of the query Prefix List.
  final pulumi.Input<String>? prefixListId;
  /// Reason when the association fails.
  final pulumi.Input<String>? reason;
  /// The region ID of the prefix list to be queried.
  final pulumi.Input<String>? regionId;
  /// The ID of the associated resource.
  final pulumi.Input<String>? resourceId;
  /// The associated resource type. Value:-**vpcRouteTable**: The VPC route table.-**trRouteTable**: the routing table of the forwarding router.
  final pulumi.Input<String>? resourceType;
  /// The ID of the Alibaba Cloud account (primary account) to which the resource bound to the prefix list belongs.
  final pulumi.Input<String>? resourceUid;
  /// Resource attribute fields that represent the status of the resource.
  final pulumi.Input<String>? status;

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
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      prefixListId: map['prefixListId'] == null ? null : (map['prefixListId'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      resourceUid: map['resourceUid'] == null ? null : (map['resourceUid'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

