import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_recipe_args.dart';
import 'get_container_recipe_result.dart';

/// Provides details about an Image builder Container Recipe.
Future<GetContainerRecipeResult> getContainerRecipe(
  GetContainerRecipeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getContainerRecipe:getContainerRecipe',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerRecipeResult.fromMap(result);
}
