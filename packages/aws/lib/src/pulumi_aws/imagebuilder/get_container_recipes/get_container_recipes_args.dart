// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_container_recipes_filter/get_container_recipes_filter.dart';

/// Arguments for getContainerRecipes.
class GetContainerRecipesArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetContainerRecipesFilter>>? filters;

  /// Owner of the container recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  final Input<String>? owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetContainerRecipesArgs({
    this.filters,
    this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetContainerRecipesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetContainerRecipesFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      filters: Input.asOptionalInput<List<GetContainerRecipesFilter>>(
          map['filters']),
      owner: Input.asOptionalInput<String>(map['owner']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
