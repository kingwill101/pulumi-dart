// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_resource_selection_recipe.dart';

class LifecyclePolicyResourceSelection {
  /// A list of recipe that are used as selection criteria for the output images that the lifecycle policy applies to. Detailed below.
  final pulumi.Input<List<LifecyclePolicyResourceSelectionRecipe>>? recipes;
  /// A list of tags that are used as selection criteria for the Image Builder image resources that the lifecycle policy applies to.
  final pulumi.Input<Map<String, String>>? tagMap;

  /// Creates a new [LifecyclePolicyResourceSelection].
  /// [recipes] A list of recipe that are used as selection criteria for the output images that the lifecycle policy applies to. Detailed below.
  /// [tagMap] A list of tags that are used as selection criteria for the Image Builder image resources that the lifecycle policy applies to.
  LifecyclePolicyResourceSelection({
    this.recipes,
    this.tagMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recipes': ?pulumi.Input.mapOptionalInputValue<List<LifecyclePolicyResourceSelectionRecipe>, List<Map<String, dynamic>>>(recipes, (value) => pulumi.Input.encodeList<LifecyclePolicyResourceSelectionRecipe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tagMap': ?tagMap,
    };
  }

  factory LifecyclePolicyResourceSelection.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyResourceSelection(
      recipes: map['recipes'] == null ? null : (pulumi.Input.decodeList<LifecyclePolicyResourceSelectionRecipe>(map['recipes'], (value) => LifecyclePolicyResourceSelectionRecipe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tagMap: map['tagMap'] == null ? null : ((map['tagMap'] as Map).cast<String, String>()).input(),
    );
  }
}

