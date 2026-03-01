import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_lifecycle_policy_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Lifecycle Policy. See AWS documentation for [lifecycle policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html).
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
/// const example = new aws.opensearch.ServerlessLifecyclePolicy("example", {
///     name: "example",
///     type: "retention",
///     policy: JSON.stringify({
///         Rules: [
///             {
///                 ResourceType: "index",
///                 Resource: ["index/autoparts-inventory/*"],
///                 MinIndexRetention: "81d",
///             },
///             {
///                 ResourceType: "index",
///                 Resource: ["index/sales/orders*"],
///                 NoMinIndexRetention: true,
///             },
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessLifecyclePolicy("example",
///     name="example",
///     type="retention",
///     policy=json.dumps({
///         "Rules": [
///             {
///                 "ResourceType": "index",
///                 "Resource": ["index/autoparts-inventory/*"],
///                 "MinIndexRetention": "81d",
///             },
///             {
///                 "ResourceType": "index",
///                 "Resource": ["index/sales/orders*"],
///                 "NoMinIndexRetention": True,
///             },
///         ],
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
///     var example = new Aws.OpenSearch.ServerlessLifecyclePolicy("example", new()
///     {
///         Name = "example",
///         Type = "retention",
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Rules"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["ResourceType"] = "index",
///                     ["Resource"] = new[]
///                     {
///                         "index/autoparts-inventory/*",
///                     },
///                     ["MinIndexRetention"] = "81d",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["ResourceType"] = "index",
///                     ["Resource"] = new[]
///                     {
///                         "index/sales/orders*",
///                     },
///                     ["NoMinIndexRetention"] = true,
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Rules": []interface{}{
/// 				map[string]interface{}{
/// 					"ResourceType": "index",
/// 					"Resource": []string{
/// 						"index/autoparts-inventory/*",
/// 					},
/// 					"MinIndexRetention": "81d",
/// 				},
/// 				map[string]interface{}{
/// 					"ResourceType": "index",
/// 					"Resource": []string{
/// 						"index/sales/orders*",
/// 					},
/// 					"NoMinIndexRetention": true,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = opensearch.NewServerlessLifecyclePolicy(ctx, "example", &opensearch.ServerlessLifecyclePolicyArgs{
/// 			Name:   pulumi.String("example"),
/// 			Type:   pulumi.String("retention"),
/// 			Policy: pulumi.String(json0),
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
/// import com.pulumi.aws.opensearch.ServerlessLifecyclePolicy;
/// import com.pulumi.aws.opensearch.ServerlessLifecyclePolicyArgs;
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
///         var example = new ServerlessLifecyclePolicy("example", ServerlessLifecyclePolicyArgs.builder()
///             .name("example")
///             .type("retention")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Rules", jsonArray(
///                         jsonObject(
///                             jsonProperty("ResourceType", "index"),
///                             jsonProperty("Resource", jsonArray("index/autoparts-inventory/*")),
///                             jsonProperty("MinIndexRetention", "81d")
///                         ),
///                         jsonObject(
///                             jsonProperty("ResourceType", "index"),
///                             jsonProperty("Resource", jsonArray("index/sales/orders*")),
///                             jsonProperty("NoMinIndexRetention", true)
///                         )
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessLifecyclePolicy
///     properties:
///       name: example
///       type: retention
///       policy:
///         fn::toJSON:
///           Rules:
///             - ResourceType: index
///               Resource:
///                 - index/autoparts-inventory/*
///               MinIndexRetention: 81d
///             - ResourceType: index
///               Resource:
///                 - index/sales/orders*
///               NoMinIndexRetention: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Serverless Lifecycle Policy using the `name` and `type` arguments separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessLifecyclePolicy:ServerlessLifecyclePolicy example example/retention
/// ```
class ServerlessLifecyclePolicy extends pulumi.CustomResource {
  /// Description of the policy.
  late final pulumi.Output<String?> description;
  /// Name of the policy.
  late final pulumi.Output<String> name;
  /// JSON policy document to use as the content for the new policy.
  late final pulumi.Output<String> policy;
  /// Version of the policy.
  late final pulumi.Output<String> policyVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Type of lifecycle policy. Must be `retention`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [ServerlessLifecyclePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessLifecyclePolicy]. {@macro pulumi_opensearch_serverless_lifecycle_policy_serverless_lifecycle_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessLifecyclePolicy(
    String name, {
    ServerlessLifecyclePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessLifecyclePolicy:ServerlessLifecyclePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.policyVersion = registerOutput<String>('policyVersion');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
  }
}
