import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';
import 'resource_policy_state.dart';

/// Resource for managing an AWS OpenSearch Ingestion Resource Policy.
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
/// const current = aws.getCallerIdentity({});
/// const examplePipeline = new aws.opensearchingest.Pipeline("example", {
///     pipelineName: "example",
///     pipelineConfigurationBody: current.then(current => `version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"arn:aws:iam::${current.accountId}:role/Example\"
///           region: \"us-east-1\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// `),
///     maxUnits: 1,
///     minUnits: 1,
/// });
/// const example = new aws.opensearchingest.ResourcePolicy("example", {
///     resourceArn: examplePipeline.pipelineArn,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Principal: {
///                 AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
///             },
///             Action: "osis:CreatePipelineEndpoint",
///             Resource: examplePipeline.pipelineArn,
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example_pipeline = aws.opensearchingest.Pipeline("example",
///     pipeline_name="example",
///     pipeline_configuration_body=f"""version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"arn:aws:iam::{current.account_id}:role/Example\"
///           region: \"us-east-1\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// """,
///     max_units=1,
///     min_units=1)
/// example = aws.opensearchingest.ResourcePolicy("example",
///     resource_arn=example_pipeline.pipeline_arn,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": f"arn:aws:iam::{current.account_id}:root",
///             },
///             "Action": "osis:CreatePipelineEndpoint",
///             "Resource": example_pipeline.pipeline_arn,
///         }],
///     }))
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var examplePipeline = new Aws.OpenSearchIngest.Pipeline("example", new()
///     {
///         PipelineName = "example",
///         PipelineConfigurationBody = @$"version: \""2\""
/// example-pipeline:
///   source:
///     http:
///       path: \""/example\""
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \""arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:role/Example\""
///           region: \""us-east-1\""
///         bucket: \""example\""
///         threshold:
///           event_collect_timeout: \""60s\""
///         codec:
///           ndjson:
/// ",
///         MaxUnits = 1,
///         MinUnits = 1,
///     });
///
///     var example = new Aws.OpenSearchIngest.ResourcePolicy("example", new()
///     {
///         ResourceArn = examplePipeline.PipelineArn,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                     },
///                     ["Action"] = "osis:CreatePipelineEndpoint",
///                     ["Resource"] = examplePipeline.PipelineArn,
///                 },
///             },
///         })),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearchingest"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePipeline, err := opensearchingest.NewPipeline(ctx, "example", &opensearchingest.PipelineArgs{
/// 			PipelineName: pulumi.String("example"),
/// 			PipelineConfigurationBody: pulumi.Sprintf(`version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"arn:aws:iam::%v:role/Example\"
///           region: \"us-east-1\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// `, current.AccountId),
/// 			MaxUnits: pulumi.Int(1),
/// 			MinUnits: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearchingest.NewResourcePolicy(ctx, "example", &opensearchingest.ResourcePolicyArgs{
/// 			ResourceArn: examplePipeline.PipelineArn,
/// 			Policy: examplePipeline.PipelineArn.ApplyT(func(pipelineArn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Effect": "Allow",
/// 							"Principal": map[string]string{
/// 								"AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 							},
/// 							"Action":   "osis:CreatePipelineEndpoint",
/// 							"Resource": pipelineArn,
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 		})
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
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_opensearchingest_resourcepolicy" "example" {
///   resource_arn = aws_opensearchingest_pipeline.example.pipeline_arn
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:aws:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Action"   = "osis:CreatePipelineEndpoint"
///       "Resource" = aws_opensearchingest_pipeline.example.pipeline_arn
///     }]
///   })
/// }
/// resource "aws_opensearchingest_pipeline" "example" {
///   pipeline_name               = "example"
///   pipeline_configuration_body ="version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"arn:aws:iam::${data.aws_getcalleridentity.current.account_id}:role/Example\"
///           region: \"us-east-1\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// "
///   max_units                   = 1
///   min_units                   = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.opensearchingest.Pipeline;
/// import com.pulumi.aws.opensearchingest.PipelineArgs;
/// import com.pulumi.aws.opensearchingest.ResourcePolicy;
/// import com.pulumi.aws.opensearchingest.ResourcePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var examplePipeline = new Pipeline("examplePipeline", PipelineArgs.builder()
///             .pipelineName("example")
///             .pipelineConfigurationBody("""
/// version: \"2\"
/// example-pipeline:
///   source:
///     http:
///       path: \"/example\"
///   sink:
///     - s3:
///         aws:
///           sts_role_arn: \"arn:aws:iam::%s:role/Example\"
///           region: \"us-east-1\"
///         bucket: \"example\"
///         threshold:
///           event_collect_timeout: \"60s\"
///         codec:
///           ndjson:
/// ", current.accountId()))
///             .maxUnits(1)
///             .minUnits(1)
///             .build());
///
///         var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
///             .resourceArn(examplePipeline.pipelineArn())
///             .policy(examplePipeline.pipelineArn().applyValue(_pipelineArn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
///                         )),
///                         jsonProperty("Action", "osis:CreatePipelineEndpoint"),
///                         jsonProperty("Resource", _pipelineArn)
///                     )))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearchingest:ResourcePolicy
///     properties:
///       resourceArn: ${examplePipeline.pipelineArn}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal:
///                 AWS: arn:aws:iam::${current.accountId}:root
///               Action: osis:CreatePipelineEndpoint
///               Resource: ${examplePipeline.pipelineArn}
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
///                   sts_role_arn: \"arn:aws:iam::${current.accountId}:role/Example\"
///                   region: \"us-east-1\"
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
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `resourceArn` (String) ARN of the resource the policy is attached to.
///
///
/// Using `pulumi import`, import OpenSearch Ingestion Resource Policy using the `resourceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearchingest/resourcePolicy:ResourcePolicy example arn:aws:osis:us-east-1:123456789012:pipeline/example
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// JSON-formatted policy to attach to the resource.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the resource to attach the policy to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_opensearchingest_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearchingest/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [ResourcePolicy] resource's state with the given [name] and [id].
  static ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearchingest/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Creates a typed reference to an existing [ResourcePolicy] resource.
  ResourcePolicy.reference(String urn)
    : super(
        'aws:opensearchingest/resourcePolicy:ResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
