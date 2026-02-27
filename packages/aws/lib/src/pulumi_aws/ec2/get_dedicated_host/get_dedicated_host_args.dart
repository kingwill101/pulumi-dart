// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_dedicated_host_filter/get_dedicated_host_filter.dart';

/// Arguments for getDedicatedHost.
class GetDedicatedHostArgs {
  /// Configuration block. Detailed below.
  final pulumi.Input<List<GetDedicatedHostFilter>>? filters;

  /// ID of the Dedicated Host.
  ///
  /// The arguments of this data source act as filters for querying the available EC2 Hosts in the current region.
  /// The given filters must match exactly one host whose data will be exported as attributes.
  final pulumi.Input<String>? hostId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  GetDedicatedHostArgs({
    this.filters,
    this.hostId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetDedicatedHostFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetDedicatedHostFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final hostIdValue = hostId;
    if (hostIdValue != null) {
      map['hostId'] = hostIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetDedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostArgs(
      filters: pulumi.Input.asOptionalInput<List<GetDedicatedHostFilter>>(
          map['filters']),
      hostId: pulumi.Input.asOptionalInput<String>(map['hostId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
