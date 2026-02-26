import 'package:pulumi/pulumi.dart';
import 'get_model_args.dart';
import 'get_model_result.dart';

/// Data source for managing an AWS Bedrock Foundation Model.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.bedrockfoundation.getModels({});
/// const testGetModel = test.then(test => aws.bedrockfoundation.getModel({
/// modelId: test.modelSummaries?.[0]?.modelId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrockfoundation.get_models()
/// test_get_model = aws.bedrockfoundation.get_model(model_id=test.model_summaries[0].model_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.BedrockFoundation.GetModels.Invoke();
///
/// var testGetModel = Aws.BedrockFoundation.GetModel.Invoke(new()
/// {
/// ModelId = test.Apply(getModelsResult => getModelsResult.ModelSummaries[0]?.ModelId),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockfoundation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := bedrockfoundation.GetModels(ctx, &bedrockfoundation.GetModelsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bedrockfoundation.GetModel(ctx, &bedrockfoundation.GetModelArgs{
/// ModelId: test.ModelSummaries[0].ModelId,
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
/// import com.pulumi.aws.bedrockfoundation.BedrockfoundationFunctions;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelsArgs;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelArgs;
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
/// final var test = BedrockfoundationFunctions.getModels(GetModelsArgs.builder()
/// .build());
///
/// final var testGetModel = BedrockfoundationFunctions.getModel(GetModelArgs.builder()
/// .modelId(test.modelSummaries()[0].modelId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:bedrockfoundation:getModels
/// arguments: {}
/// testGetModel:
/// fn::invoke:
/// function: aws:bedrockfoundation:getModel
/// arguments:
/// modelId: ${test.modelSummaries[0].modelId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetModelResult> getModel(
  GetModelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModel:getModel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelResult.fromMap(result);
}
