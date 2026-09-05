// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_recipes_filter.dart';

/// Result data returned by getImageRecipes.
class GetImageRecipesResult {
  /// Set of ARNs of the matched Image Builder Image Recipes.
  final List<String>? arns;
  final List<GetImageRecipesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of names of the matched Image Builder Image Recipes.
  final List<String>? names;
  final String? owner;
  final String? region;

  /// Creates a new [GetImageRecipesResult].
  /// [arns] Set of ARNs of the matched Image Builder Image Recipes.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of names of the matched Image Builder Image Recipes.
  /// [owner] Optional.
  /// [region] Optional.
  const GetImageRecipesResult({
    this.arns,
    this.filters,
    this.id,
    this.names,
    this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageRecipesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'names': ?names,
      'owner': ?owner,
      'region': ?region,
    };
  }

  factory GetImageRecipesResult.fromMap(Map<String, dynamic> map) {
    return GetImageRecipesResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageRecipesFilter>(guardedValue, (value) => GetImageRecipesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
