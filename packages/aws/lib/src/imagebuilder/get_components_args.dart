// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_components_filter.dart';

/// {@template pulumi_imagebuilder_get_components_get_components_args_doc}
/// Arguments for getComponents.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_components_get_components_args_doc}
class GetComponentsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetComponentsFilter>>? filters;

  /// Owner of the image recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  final pulumi.Input<String>? owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetComponentsArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [owner] Owner of the image recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetComponentsArgs({
    List<GetComponentsFilter>? filters,
    String? owner,
    String? region,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetComponentsFilter>>(filters),
        owner = pulumi.Input.asOptionalInput<String>(owner),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetComponentsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetComponentsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ownerValue = owner;
    if (ownerValue != null) {
      map['owner'] = ownerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetComponentsArgs.fromMap(Map<String, dynamic> map) {
    return GetComponentsArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetComponentsFilter>(
              map['filters'],
              (value) => GetComponentsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      owner: map['owner'] == null ? null : map['owner'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
