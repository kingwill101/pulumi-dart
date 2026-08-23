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
  const LifecyclePolicyResourceSelection({
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
      recipes: (() { final guardedValue = map['recipes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LifecyclePolicyResourceSelectionRecipe>(guardedValue, (value) => LifecyclePolicyResourceSelectionRecipe.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tagMap: (() { final guardedValue = map['tagMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
