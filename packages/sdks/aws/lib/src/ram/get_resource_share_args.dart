// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_share_filter.dart';

/// {@template pulumi_ram_get_resource_share_get_resource_share_args_doc}
/// Arguments for getResourceShare.
/// {@endtemplate}
/// {@macro pulumi_ram_get_resource_share_get_resource_share_args_doc}
class GetResourceShareArgs {
  /// Filter used to scope the list of owned shares e.g., by tags. See [related docs] (https://docs.aws.amazon.com/ram/latest/APIReference/API_TagFilter.html).
  final pulumi.Input<List<GetResourceShareFilter>>? filters;
  /// Name of the resource share to retrieve.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Owner of the resource share. Valid values are `SELF` or `OTHER-ACCOUNTS`.
  final pulumi.Input<String> resourceOwner;
  /// Specifies that you want to retrieve details of only those resource shares that have this status. Valid values are `PENDING`, `ACTIVE`, `FAILED`, `DELETING`, and `DELETED`.
  final pulumi.Input<String>? resourceShareStatus;
  /// Tags attached to the resource share.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetResourceShareArgs].
  /// [filters] Filter used to scope the list of owned shares e.g., by tags. See [related docs] (https://docs.aws.amazon.com/ram/latest/APIReference/API_TagFilter.html).
  /// [name] Name of the resource share to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceOwner] Owner of the resource share. Valid values are `SELF` or `OTHER-ACCOUNTS`.
  /// [resourceShareStatus] Specifies that you want to retrieve details of only those resource shares that have this status. Valid values are `PENDING`, `ACTIVE`, `FAILED`, `DELETING`, and `DELETED`.
  /// [tags] Tags attached to the resource share.
  GetResourceShareArgs({
    this.filters,
    this.name,
    this.region,
    required this.resourceOwner,
    this.resourceShareStatus,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetResourceShareFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetResourceShareFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'resourceOwner': resourceOwner,
      'resourceShareStatus': ?resourceShareStatus,
      'tags': ?tags,
    };
  }

  factory GetResourceShareArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceShareArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourceShareFilter>(guardedValue, (value) => GetResourceShareFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOwner: pulumi.Input.fromValue(map['resourceOwner'] as String),
      resourceShareStatus: (() { final guardedValue = map['resourceShareStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

