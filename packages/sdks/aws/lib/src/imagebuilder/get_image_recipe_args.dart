// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imagebuilder_get_image_recipe_get_image_recipe_args_doc}
/// Arguments for getImageRecipe.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_image_recipe_get_image_recipe_args_doc}
class GetImageRecipeArgs {
  /// ARN of the image recipe.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the image recipe.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetImageRecipeArgs].
  /// [arn] ARN of the image recipe.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the image recipe.
  GetImageRecipeArgs({
    required this.arn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetImageRecipeArgs.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

