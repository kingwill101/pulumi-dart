// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_interface_filter/get_network_interface_filter.dart';

/// Arguments for getNetworkInterface.
class GetNetworkInterfaceArgs {
  /// One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out [describe-network-interfaces](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-network-interfaces.html) in the AWS CLI reference.
  final Input<List<GetNetworkInterfaceFilter>>? filters;

  /// Identifier for the network interface.
  final Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Any tags assigned to the network interface.
  final Input<Map<String, String>>? tags;

  GetNetworkInterfaceArgs({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetNetworkInterfaceFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetNetworkInterfaceFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
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

  factory GetNetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceArgs(
      filters: Input.asOptionalInput<List<GetNetworkInterfaceFilter>>(
          map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
