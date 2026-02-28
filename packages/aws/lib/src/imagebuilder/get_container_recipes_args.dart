// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_recipes_filter.dart';

/// {@template pulumi_imagebuilder_get_container_recipes_get_container_recipes_args_doc}
/// Arguments for getContainerRecipes.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_container_recipes_get_container_recipes_args_doc}
class GetContainerRecipesArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetContainerRecipesFilter>>? filters;

  /// Owner of the container recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  final pulumi.Input<String>? owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetContainerRecipesArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [owner] Owner of the container recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetContainerRecipesArgs({
    List<GetContainerRecipesFilter>? filters,
    String? owner,
    String? region,
  })  : filters = pulumi.Input.asOptionalInput<List<GetContainerRecipesFilter>>(
            filters),
        owner = pulumi.Input.asOptionalInput<String>(owner),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetContainerRecipesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetContainerRecipesFilter,
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

  factory GetContainerRecipesArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipesArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetContainerRecipesFilter>(
              map['filters'],
              (value) => GetContainerRecipesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      owner: map['owner'] == null ? null : map['owner'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
