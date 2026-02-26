import 'package:pulumi/pulumi.dart';
import 'get_pipeline_definition_args.dart';
import 'get_pipeline_definition_result.dart';

/// Provides details about a specific DataPipeline Pipeline Definition.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.datapipeline.getPipelineDefinition({
/// pipelineId: "pipelineID",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datapipeline.get_pipeline_definition(pipeline_id="pipelineID")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.DataPipeline.GetPipelineDefinition.Invoke(new()
/// {
/// PipelineId = "pipelineID",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datapipeline"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datapipeline.LookupPipelineDefinition(ctx, &datapipeline.LookupPipelineDefinitionArgs{
/// PipelineId: "pipelineID",
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
/// import com.pulumi.aws.datapipeline.DatapipelineFunctions;
/// import com.pulumi.aws.datapipeline.inputs.GetPipelineDefinitionArgs;
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
/// final var example = DatapipelineFunctions.getPipelineDefinition(GetPipelineDefinitionArgs.builder()
/// .pipelineId("pipelineID")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:datapipeline:getPipelineDefinition
/// arguments:
/// pipelineId: pipelineID
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPipelineDefinitionResult> getPipelineDefinition(
  GetPipelineDefinitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datapipeline/getPipelineDefinition:getPipelineDefinition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPipelineDefinitionResult.fromMap(result);
}
