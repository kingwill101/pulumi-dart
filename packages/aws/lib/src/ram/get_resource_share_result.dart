// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_share_filter.dart';

/// Result data returned by getResourceShare.
class GetResourceShareResult {
  /// ARN of the resource share.
  final String arn;
  final List<GetResourceShareFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// ID of the AWS account that owns the resource share.
  final String owningAccountId;
  final String region;
  /// A list of resource ARNs associated with the resource share.
  final List<String> resourceArns;
  final String resourceOwner;
  final String? resourceShareStatus;
  /// Status of the resource share.
  final String status;
  /// Tags attached to the resource share.
  final Map<String, String> tags;

  /// Creates a new [GetResourceShareResult].
  /// [arn] ARN of the resource share.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [owningAccountId] ID of the AWS account that owns the resource share.
  /// [region] Required.
  /// [resourceArns] A list of resource ARNs associated with the resource share.
  /// [resourceOwner] Required.
  /// [resourceShareStatus] Optional.
  /// [status] Status of the resource share.
  /// [tags] Tags attached to the resource share.
  GetResourceShareResult({
    required this.arn,
    this.filters,
    required this.id,
    required this.name,
    required this.owningAccountId,
    required this.region,
    required this.resourceArns,
    required this.resourceOwner,
    this.resourceShareStatus,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetResourceShareFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'name': name,
      'owningAccountId': owningAccountId,
      'region': region,
      'resourceArns': resourceArns,
      'resourceOwner': resourceOwner,
      'resourceShareStatus': ?resourceShareStatus,
      'status': status,
      'tags': tags,
    };
  }

  factory GetResourceShareResult.fromMap(Map<String, dynamic> map) {
    return GetResourceShareResult(
      arn: map['arn'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetResourceShareFilter>(map['filters'], (value) => GetResourceShareFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      owningAccountId: map['owningAccountId'] as String,
      region: map['region'] as String,
      resourceArns: (map['resourceArns'] as List).cast<String>(),
      resourceOwner: map['resourceOwner'] as String,
      resourceShareStatus: map['resourceShareStatus'] == null ? null : map['resourceShareStatus'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

