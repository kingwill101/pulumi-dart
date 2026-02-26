import 'package:pulumi/pulumi.dart';
import 'get_image_recipes_args.dart';
import 'get_image_recipes_result.dart';

/// Use this data source to get the ARNs and names of Image Builder Image Recipes matching the specified criteria.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getImageRecipes({
/// owner: "Self",
/// filters: [{
/// name: "platform",
/// values: ["Linux"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_image_recipes(owner="Self",
/// filters=[{
/// "name": "platform",
/// "values": ["Linux"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ImageBuilder.GetImageRecipes.Invoke(new()
/// {
/// Owner = "Self",
/// Filters = new[]
/// {
/// new Aws.ImageBuilder.Inputs.GetImageRecipesFilterInputArgs
/// {
/// Name = "platform",
/// Values = new[]
/// {
/// "Linux",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := imagebuilder.GetImageRecipes(ctx, &imagebuilder.GetImageRecipesArgs{
/// Owner: pulumi.StringRef("Self"),
/// Filters: []imagebuilder.GetImageRecipesFilter{
/// {
/// Name: "platform",
/// Values: []string{
/// "Linux",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetImageRecipesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = ImagebuilderFunctions.getImageRecipes(GetImageRecipesArgs.builder()
/// .owner("Self")
/// .filters(GetImageRecipesFilterArgs.builder()
/// .name("platform")
/// .values("Linux")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:imagebuilder:getImageRecipes
/// arguments:
/// owner: Self
/// filters:
/// - name: platform
/// values:
/// - Linux
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetImageRecipesResult> getImageRecipes(
  GetImageRecipesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImageRecipes:getImageRecipes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageRecipesResult.fromMap(result);
}
