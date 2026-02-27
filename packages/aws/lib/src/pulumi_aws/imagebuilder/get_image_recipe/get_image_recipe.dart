import 'package:pulumi/pulumi.dart';
import 'get_image_recipe_args.dart';
import 'get_image_recipe_result.dart';

/// Provides details about an Image Builder Image Recipe.
Future<GetImageRecipeResult> getImageRecipe(
  GetImageRecipeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImageRecipe:getImageRecipe',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageRecipeResult.fromMap(result);
}
