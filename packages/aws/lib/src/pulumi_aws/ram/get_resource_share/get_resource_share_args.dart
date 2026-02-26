// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_resource_share_filter/get_resource_share_filter.dart';

/// Arguments for getResourceShare.
class GetResourceShareArgs {
  /// Filter used to scope the list of owned shares e.g., by tags. See [related docs] (https://docs.aws.amazon.com/ram/latest/APIReference/API_TagFilter.html).
  final Input<List<GetResourceShareFilter>>? filters;

  /// Name of the resource share to retrieve.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Owner of the resource share. Valid values are `SELF` or `OTHER-ACCOUNTS`.
  final Input<String> resourceOwner;

  /// Specifies that you want to retrieve details of only those resource shares that have this status. Valid values are `PENDING`, `ACTIVE`, `FAILED`, `DELETING`, and `DELETED`.
  final Input<String>? resourceShareStatus;

  /// Tags attached to the resource share.
  final Input<Map<String, String>>? tags;

  GetResourceShareArgs({
    this.filters,
    this.name,
    this.region,
    required this.resourceOwner,
    this.resourceShareStatus,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetResourceShareFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetResourceShareFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceOwner'] = resourceOwner;
    final resourceShareStatusValue = resourceShareStatus;
    if (resourceShareStatusValue != null) {
      map['resourceShareStatus'] = resourceShareStatusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetResourceShareArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceShareArgs(
      filters:
          Input.asOptionalInput<List<GetResourceShareFilter>>(map['filters']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceOwner: Input.asInput<String>(map['resourceOwner']),
      resourceShareStatus:
          Input.asOptionalInput<String>(map['resourceShareStatus']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
