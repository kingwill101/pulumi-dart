// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_prefix_list_filter/get_prefix_list_filter.dart';

/// Arguments for getPrefixList.
class GetPrefixListArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// prefix lists. The given filters must match exactly one prefix list
  /// whose data will be exported as attributes.
  final pulumi.Input<List<GetPrefixListFilter>>? filters;

  /// Name of the prefix list to select.
  final pulumi.Input<String>? name;

  /// ID of the prefix list to select.
  final pulumi.Input<String>? prefixListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetPrefixListArgs({
    this.filters,
    this.name,
    this.prefixListId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetPrefixListFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetPrefixListFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final prefixListIdValue = prefixListId;
    if (prefixListIdValue != null) {
      map['prefixListId'] = prefixListIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPrefixListArgs.fromMap(Map<String, dynamic> map) {
    return GetPrefixListArgs(
      filters: pulumi.Input.asOptionalInput<List<GetPrefixListFilter>>(
          map['filters']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      prefixListId: pulumi.Input.asOptionalInput<String>(map['prefixListId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
