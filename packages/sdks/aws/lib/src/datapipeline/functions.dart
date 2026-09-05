import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_args.dart';
import 'get_pipeline_definition_args.dart';
import 'get_pipeline_definition_result.dart';
import 'get_pipeline_result.dart';

/// Provides details about a specific DataPipeline Pipeline.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.datapipeline.getPipeline({
///     pipelineId: "pipelineID",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datapipeline.get_pipeline(pipeline_id="pipelineID")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DataPipeline.GetPipeline.Invoke(new()
///     {
///         PipelineId = "pipelineID",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datapipeline"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datapipeline.LookupPipeline(ctx, &datapipeline.LookupPipelineArgs{
/// 			PipelineId: "pipelineID",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_datapipeline_getpipeline" "example" {
///   pipeline_id = "pipelineID"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datapipeline.DatapipelineFunctions;
/// import com.pulumi.aws.datapipeline.inputs.GetPipelineArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = DatapipelineFunctions.getPipeline(GetPipelineArgs.builder()
///             .pipelineId("pipelineID")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:datapipeline:getPipeline
///       arguments:
///         pipelineId: pipelineID
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datapipeline_get_pipeline_get_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineResult> getPipeline(
  GetPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datapipeline/getPipeline:getPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult.fromMap(result);
}

pulumi.Output<GetPipelineResult> getPipelineOutput(
  GetPipelineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:datapipeline/getPipeline:getPipeline',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPipelineResult.fromMap);
}

/// Provides details about a specific DataPipeline Pipeline Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.datapipeline.getPipelineDefinition({
///     pipelineId: "pipelineID",
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
///     var example = Aws.DataPipeline.GetPipelineDefinition.Invoke(new()
///     {
///         PipelineId = "pipelineID",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datapipeline"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datapipeline.LookupPipelineDefinition(ctx, &datapipeline.LookupPipelineDefinitionArgs{
/// 			PipelineId: "pipelineID",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_datapipeline_getpipelinedefinition" "example" {
///   pipeline_id = "pipelineID"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = DatapipelineFunctions.getPipelineDefinition(GetPipelineDefinitionArgs.builder()
///             .pipelineId("pipelineID")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:datapipeline:getPipelineDefinition
///       arguments:
///         pipelineId: pipelineID
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datapipeline_get_pipeline_definition_get_pipeline_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineDefinitionResult> getPipelineDefinition(
  GetPipelineDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datapipeline/getPipelineDefinition:getPipelineDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineDefinitionResult.fromMap(result);
}

pulumi.Output<GetPipelineDefinitionResult> getPipelineDefinitionOutput(
  GetPipelineDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:datapipeline/getPipelineDefinition:getPipelineDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPipelineDefinitionResult.fromMap);
}
