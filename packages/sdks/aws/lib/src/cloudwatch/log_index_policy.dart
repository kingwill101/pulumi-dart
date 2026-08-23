import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_index_policy_args.dart';
import 'log_index_policy_state.dart';

/// Resource for managing an AWS CloudWatch Logs Index Policy.
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
/// const example = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleLogIndexPolicy = new aws.cloudwatch.LogIndexPolicy("example", {
///     logGroupName: example.name,
///     policyDocument: JSON.stringify({
///         Fields: ["eventName"],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="example")
/// example_log_index_policy = aws.cloudwatch.LogIndexPolicy("example",
///     log_group_name=example.name,
///     policy_document=json.dumps({
///         "Fields": ["eventName"],
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
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleLogIndexPolicy = new Aws.CloudWatch.LogIndexPolicy("example", new()
///     {
///         LogGroupName = example.Name,
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Fields"] = new[]
///             {
///                 "eventName",
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string][]string{
/// 			"Fields": []string{
/// 				"eventName",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudwatch.NewLogIndexPolicy(ctx, "example", &cloudwatch.LogIndexPolicyArgs{
/// 			LogGroupName:   example.Name,
/// 			PolicyDocument: pulumi.String(json0),
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
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "example"
/// }
/// resource "aws_cloudwatch_logindexpolicy" "example" {
///   log_group_name = aws_cloudwatch_loggroup.example.name
///   policy_document = jsonencode({
///     "Fields" = ["eventName"]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogIndexPolicy;
/// import com.pulumi.aws.cloudwatch.LogIndexPolicyArgs;
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
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleLogIndexPolicy = new LogIndexPolicy("exampleLogIndexPolicy", LogIndexPolicyArgs.builder()
///             .logGroupName(example.name())
///             .policyDocument(serializeJson(
///                 jsonObject(
///                     jsonProperty("Fields", jsonArray("eventName"))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: example
///   exampleLogIndexPolicy:
///     type: aws:cloudwatch:LogIndexPolicy
///     name: example
///     properties:
///       logGroupName: ${example.name}
///       policyDocument:
///         fn::toJSON:
///           Fields:
///             - eventName
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `logGroupName` (String) Name of the log group.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Index Policies using `logGroupName`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logIndexPolicy:LogIndexPolicy example /aws/log/group/name
/// ```
class LogIndexPolicy extends pulumi.CustomResource {
  /// Log group name to set the policy for.
  late final pulumi.Output<String> logGroupName;
  /// JSON policy document. This is a JSON formatted string.
  late final pulumi.Output<String> policyDocument;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LogIndexPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogIndexPolicy]. {@macro pulumi_cloudwatch_log_index_policy_log_index_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogIndexPolicy(
    String name, {
    LogIndexPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logIndexPolicy:LogIndexPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logGroupName = registerOutput<String>('logGroupName');
    policyDocument = registerOutput<String>('policyDocument');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [LogIndexPolicy] resource's state with the given [name] and [id].
  static LogIndexPolicy get(
    String name,
    pulumi.Input<String> id, {
    LogIndexPolicyState? state,
  }) {
    return LogIndexPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogIndexPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logIndexPolicy:LogIndexPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logGroupName = registerOutput<String>('logGroupName');
    policyDocument = registerOutput<String>('policyDocument');
    region = registerOutput<String>('region');
  }
}
