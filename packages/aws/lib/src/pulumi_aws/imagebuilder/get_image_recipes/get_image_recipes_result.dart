// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_image_recipes_filter/get_image_recipes_filter.dart';

/// Result data returned by getImageRecipes.
class GetImageRecipesResult {
  /// Set of ARNs of the matched Image Builder Image Recipes.
  final List<String> arns;
  final List<GetImageRecipesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of names of the matched Image Builder Image Recipes.
  final List<String> names;
  final String? owner;
  final String region;

  GetImageRecipesResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    this.owner,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetImageRecipesFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['names'] = names;
    final ownerValue = owner;
    if (ownerValue != null) {
      map['owner'] = ownerValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetImageRecipesResult.fromMap(Map<String, dynamic> map) {
    return GetImageRecipesResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetImageRecipesFilter>(
              map['filters'],
              (value) => GetImageRecipesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      owner: map['owner'] == null ? null : map['owner'] as String,
      region: map['region'] as String,
    );
  }
}
