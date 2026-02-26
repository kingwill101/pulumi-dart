import 'package:pulumi/pulumi.dart';
import 'get_custom_model_args.dart';
import 'get_custom_model_result.dart';

/// Returns properties of a specific Amazon Bedrock custom model.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.bedrock.getCustomModel({
/// modelId: "arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_custom_model(model_id="arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Bedrock.GetCustomModel.Invoke(new()
/// {
/// ModelId = "arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.LookupCustomModel(ctx, &bedrock.LookupCustomModelArgs{
/// ModelId: "arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ",
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
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetCustomModelArgs;
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
/// final var test = BedrockFunctions.getCustomModel(GetCustomModelArgs.builder()
/// .modelId("arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:bedrock:getCustomModel
/// arguments:
/// modelId: 'arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 '
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCustomModelResult> getCustomModel(
  GetCustomModelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getCustomModel:getCustomModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomModelResult.fromMap(result);
}
