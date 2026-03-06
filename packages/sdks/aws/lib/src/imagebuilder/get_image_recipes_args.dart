// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_recipes_filter.dart';

/// {@template pulumi_imagebuilder_get_image_recipes_get_image_recipes_args_doc}
/// Arguments for getImageRecipes.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_image_recipes_get_image_recipes_args_doc}
class GetImageRecipesArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetImageRecipesFilter>>? filters;
  /// Owner of the image recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  final pulumi.Input<String>? owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetImageRecipesArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [owner] Owner of the image recipes. Valid values are `Self`, `Shared`, `Amazon` and `ThirdParty`. Defaults to `Self`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetImageRecipesArgs({
    this.filters,
    this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetImageRecipesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetImageRecipesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': ?owner,
      'region': ?region,
    };
  }

  factory GetImageRecipesArgs.fromMap(Map<String, dynamic> map) {
    return GetImageRecipesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetImageRecipesFilter>(guardedValue, (value) => GetImageRecipesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

