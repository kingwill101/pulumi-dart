import 'package:pulumi/pulumi.dart';
import 'get_image_pipeline_args.dart';
import 'get_image_pipeline_result.dart';

/// Provides details about an Image Builder Image Pipeline.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getImagePipeline({
/// arn: "arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_image_pipeline(arn="arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ImageBuilder.GetImagePipeline.Invoke(new()
/// {
/// Arn = "arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example",
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
/// _, err := imagebuilder.LookupImagePipeline(ctx, &imagebuilder.LookupImagePipelineArgs{
/// Arn: "arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example",
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
/// import com.pulumi.aws.imagebuilder.inputs.GetImagePipelineArgs;
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
/// final var example = ImagebuilderFunctions.getImagePipeline(GetImagePipelineArgs.builder()
/// .arn("arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:imagebuilder:getImagePipeline
/// arguments:
/// arn: arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetImagePipelineResult> getImagePipeline(
  GetImagePipelineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImagePipeline:getImagePipeline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImagePipelineResult.fromMap(result);
}
