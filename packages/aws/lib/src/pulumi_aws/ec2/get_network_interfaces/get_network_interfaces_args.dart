// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_interfaces_filter/get_network_interfaces_filter.dart';

/// Arguments for getNetworkInterfaces.
class GetNetworkInterfacesArgs {
  /// Custom filter block as described below.
  final Input<List<GetNetworkInterfacesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired network interfaces.
  final Input<Map<String, String>>? tags;

  GetNetworkInterfacesArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetNetworkInterfacesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetNetworkInterfacesFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory GetNetworkInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesArgs(
      filters: Input.asOptionalInput<List<GetNetworkInterfacesFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
