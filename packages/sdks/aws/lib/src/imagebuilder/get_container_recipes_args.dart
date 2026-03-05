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
    this.filters,
    this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetContainerRecipesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetContainerRecipesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': ?owner,
      'region': ?region,
    };
  }

  factory GetContainerRecipesArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetContainerRecipesFilter>(guardedValue, (value) => GetContainerRecipesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

