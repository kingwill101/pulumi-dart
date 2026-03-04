// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_recipes_filter.dart';

/// Result data returned by getContainerRecipes.
class GetContainerRecipesResult {
  /// Set of ARNs of the matched Image Builder Container Recipes.
  final List<String> arns;
  final List<GetContainerRecipesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of names of the matched Image Builder Container Recipes.
  final List<String> names;
  final String? owner;
  final String region;

  /// Creates a new [GetContainerRecipesResult].
  /// [arns] Set of ARNs of the matched Image Builder Container Recipes.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of names of the matched Image Builder Container Recipes.
  /// [owner] Optional.
  /// [region] Required.
  GetContainerRecipesResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    this.owner,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetContainerRecipesFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'names': names,
      'owner': ?owner,
      'region': region,
    };
  }

  factory GetContainerRecipesResult.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipesResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetContainerRecipesFilter>(
          guardedValue,
          (value) => GetContainerRecipesFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
    );
  }
}
