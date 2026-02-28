import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_args.dart';
import 'pipeline_buffer_options.dart';
import 'pipeline_encryption_at_rest_options.dart';
import 'pipeline_log_publishing_options.dart';
import 'pipeline_timeouts.dart';
import 'pipeline_vpc_options.dart';

/// Resource for managing an AWS OpenSearch Ingestion Pipeline.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = new aws.iam.Role("example", {assumeRolePolicy: JSON.stringify({
///     Version: "2012-10-17",
///     Statement: [{
///         Action: "sts:AssumeRole",
///         Effect: "Allow",
///         Sid: "",
///         Principal: {
///             Service: "osis-pipelines.amazonaws.com",
///         },
///     }],
/// })});
/// const examplePipeline = new aws.opensearchingest.Pipeline("example", {
///     pipelineName: "example",
///     pipelineConfigurationBody: Promise.all([example.arn, current]).then(([arn, current]) => `version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"${arn}\"
///           region: \"${current.region}\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// `),
///     maxUnits: 1,
///     minUnits: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.iam.Role("example", assume_role_policy=json.dumps({
///     "Version": "2012-10-17",
///     "Statement": [{
///         "Action": "sts:AssumeRole",
///         "Effect": "Allow",
///         "Sid": "",
///         "Principal": {
///             "Service": "osis-pipelines.amazonaws.com",
///         },
///     }],
/// }))
/// example_pipeline = aws.opensearchingest.Pipeline("example",
///     pipeline_name="example",
///     pipeline_configuration_body=example.arn.apply(lambda arn: f"""version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"{arn}\"
///           region: \"{current.region}\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// """),
///     max_units=1,
///     min_units=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Sid"] = "",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "osis-pipelines.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var examplePipeline = new Aws.OpenSearchIngest.Pipeline("example", new()
///     {
///         PipelineName = "example",
///         PipelineConfigurationBody = Output.Tuple(example.Arn, current).Apply(values =>
///         {
///             var arn = values.Item1;
///             var current = values.Item2;
///             return @$"version: \""2\""
/// example-pipeline:
///   source:
///     http:
///       path: \""/example\""
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \""{arn}\""
///           region: \""{current.Apply(getRegionResult => getRegionResult.Region)}\""
///         bucket: \""example\""
///         threshold:
///           event_collect_timeout: \""60s\""
///         codec:
///           ndjson:
/// ";
///         }),
///         MaxUnits = 1,
///         MinUnits = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearchingest"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Sid":    "",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "osis-pipelines.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearchingest.NewPipeline(ctx, "example", &opensearchingest.PipelineArgs{
/// 			PipelineName: pulumi.String("example"),
/// 			PipelineConfigurationBody: example.Arn.ApplyT(func(arn string) (string, error) {
/// 				return fmt.Sprintf(`version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"%v\"
///           region: \"%v\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// `, arn, current.Region), nil
/// 			}).(pulumi.StringOutput),
/// 			MaxUnits: pulumi.Int(1),
/// 			MinUnits: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.opensearchingest.Pipeline;
/// import com.pulumi.aws.opensearchingest.PipelineArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Sid", ""),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "osis-pipelines.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var examplePipeline = new Pipeline("examplePipeline", PipelineArgs.builder()
///             .pipelineName("example")
///             .pipelineConfigurationBody(example.arn().applyValue(_arn -> """
/// version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"%s\"
///           region: \"%s\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// ", _arn,current.region())))
///             .maxUnits(1)
///             .minUnits(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Sid: ""
///               Principal:
///                 Service: osis-pipelines.amazonaws.com
///   examplePipeline:
///     type: aws:opensearchingest:Pipeline
///     name: example
///     properties:
///       pipelineName: example
///       pipelineConfigurationBody: |
///         version: \"2\"
///         example-pipeline:
///           source:
///             http:
///               path: \"/example\"
///           sink:
///             - s3:
///                 aws:
///                   sts_role_arn: \"${example.arn}\"
///                   region: \"${current.region}\"
///                 bucket: \"example\"
///                 threshold:
///                   event_collect_timeout: \"60s\"
///                 codec:
///                   ndjson:
///       maxUnits: 1
///       minUnits: 1
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ### Using file function
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.opensearchingest.Pipeline("example", {
///     pipelineName: "example",
///     pipelineConfigurationBody: std.file({
///         input: "example.yaml",
///     }).then(invoke => invoke.result),
///     maxUnits: 1,
///     minUnits: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.opensearchingest.Pipeline("example",
///     pipeline_name="example",
///     pipeline_configuration_body=std.file(input="example.yaml").result,
///     max_units=1,
///     min_units=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.OpenSearchIngest.Pipeline("example", new()
///     {
///         PipelineName = "example",
///         PipelineConfigurationBody = Std.File.Invoke(new()
///         {
///             Input = "example.yaml",
///         }).Apply(invoke => invoke.Result),
///         MaxUnits = 1,
///         MinUnits = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearchingest"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "example.yaml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearchingest.NewPipeline(ctx, "example", &opensearchingest.PipelineArgs{
/// 			PipelineName:              pulumi.String("example"),
/// 			PipelineConfigurationBody: pulumi.String(invokeFile.Result),
/// 			MaxUnits:                  pulumi.Int(1),
/// 			MinUnits:                  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearchingest.Pipeline;
/// import com.pulumi.aws.opensearchingest.PipelineArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Pipeline("example", PipelineArgs.builder()
///             .pipelineName("example")
///             .pipelineConfigurationBody(StdFunctions.file(FileArgs.builder()
///                 .input("example.yaml")
///                 .build()).result())
///             .maxUnits(1)
///             .minUnits(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearchingest:Pipeline
///     properties:
///       pipelineName: example
///       pipelineConfigurationBody:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: example.yaml
///           return: result
///       maxUnits: 1
///       minUnits: 1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Ingestion Pipeline using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearchingest/pipeline:Pipeline example example
/// ```
class Pipeline extends pulumi.CustomResource {
  /// Key-value pairs to configure persistent buffering for the pipeline. See `buffer_options` below.
  late final pulumi.Output<PipelineBufferOptions?> bufferOptions;

  /// Key-value pairs to configure encryption for data that is written to a persistent buffer. See `encryption_at_rest_options` below.
  late final pulumi.Output<PipelineEncryptionAtRestOptions?>
      encryptionAtRestOptions;

  /// The list of ingestion endpoints for the pipeline, which you can send data to.
  late final pulumi.Output<List<String>> ingestEndpointUrls;

  /// Key-value pairs to configure log publishing. See `log_publishing_options` below.
  late final pulumi.Output<PipelineLogPublishingOptions?> logPublishingOptions;

  /// The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
  late final pulumi.Output<int> maxUnits;

  /// The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
  late final pulumi.Output<int> minUnits;

  /// Amazon Resource Name (ARN) of the pipeline.
  late final pulumi.Output<String> pipelineArn;

  /// The pipeline configuration in YAML format. This argument accepts the pipeline configuration as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with \n.
  late final pulumi.Output<String> pipelineConfigurationBody;

  /// The name of the OpenSearch Ingestion pipeline to create. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> pipelineName;

  /// ARN of the IAM role that grants the pipeline permission to access AWS resources.
  late final pulumi.Output<String> pipelineRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<PipelineTimeouts?> timeouts;

  /// Container for the values required to configure VPC access for the pipeline. If you don't specify these values, OpenSearch Ingestion creates the pipeline with a public endpoint. See `vpc_options` below.
  late final pulumi.Output<PipelineVpcOptions?> vpcOptions;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_opensearchingest_pipeline_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearchingest/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bufferOptions =
        registerOutput<PipelineBufferOptions?>('bufferOptions');
    this.encryptionAtRestOptions =
        registerOutput<PipelineEncryptionAtRestOptions?>(
            'encryptionAtRestOptions');
    this.ingestEndpointUrls =
        registerOutput<List<String>>('ingestEndpointUrls');
    this.logPublishingOptions =
        registerOutput<PipelineLogPublishingOptions?>('logPublishingOptions');
    this.maxUnits = registerOutput<int>('maxUnits');
    this.minUnits = registerOutput<int>('minUnits');
    this.pipelineArn = registerOutput<String>('pipelineArn');
    this.pipelineConfigurationBody =
        registerOutput<String>('pipelineConfigurationBody');
    this.pipelineName = registerOutput<String>('pipelineName');
    this.pipelineRoleArn = registerOutput<String>('pipelineRoleArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PipelineTimeouts?>('timeouts');
    this.vpcOptions = registerOutput<PipelineVpcOptions?>('vpcOptions');
  }
}
