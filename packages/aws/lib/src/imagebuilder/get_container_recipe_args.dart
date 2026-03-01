// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imagebuilder_get_container_recipe_get_container_recipe_args_doc}
/// Arguments for getContainerRecipe.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_container_recipe_get_container_recipe_args_doc}
class GetContainerRecipeArgs {
  /// ARN of the container recipe.
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the container recipe.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetContainerRecipeArgs].
  /// [arn] ARN of the container recipe.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the container recipe.
  GetContainerRecipeArgs({
    required String arn,
    String? region,
    Map<String, String>? tags,
  }) : arn = pulumi.Input.asInput<String>(arn),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'region': ?region, 'tags': ?tags};
  }

  factory GetContainerRecipeArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipeArgs(
      arn: map['arn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
