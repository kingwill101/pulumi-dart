// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_share_filter.dart';

/// Result data returned by getResourceShare.
class GetResourceShareResult {
  /// ARN of the resource share.
  final String? arn;
  final List<GetResourceShareFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// ID of the AWS account that owns the resource share.
  final String? owningAccountId;
  final String? region;
  /// List of resource ARNs associated with the resource share.
  final List<String>? resourceArns;
  final String? resourceOwner;
  final String? resourceShareStatus;
  /// Status of the resource share.
  final String? status;
  /// Tags attached to the resource share.
  final Map<String, String>? tags;

  /// Creates a new [GetResourceShareResult].
  /// [arn] ARN of the resource share.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [owningAccountId] ID of the AWS account that owns the resource share.
  /// [region] Optional.
  /// [resourceArns] List of resource ARNs associated with the resource share.
  /// [resourceOwner] Optional.
  /// [resourceShareStatus] Optional.
  /// [status] Status of the resource share.
  /// [tags] Tags attached to the resource share.
  const GetResourceShareResult({
    this.arn,
    this.filters,
    this.id,
    this.name,
    this.owningAccountId,
    this.region,
    this.resourceArns,
    this.resourceOwner,
    this.resourceShareStatus,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourceShareFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'owningAccountId': ?owningAccountId,
      'region': ?region,
      'resourceArns': ?resourceArns,
      'resourceOwner': ?resourceOwner,
      'resourceShareStatus': ?resourceShareStatus,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetResourceShareResult.fromMap(Map<String, dynamic> map) {
    return GetResourceShareResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourceShareFilter>(guardedValue, (value) => GetResourceShareFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owningAccountId: (() { final guardedValue = map['owningAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceArns: (() { final guardedValue = map['resourceArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceOwner: (() { final guardedValue = map['resourceOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceShareStatus: (() { final guardedValue = map['resourceShareStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
