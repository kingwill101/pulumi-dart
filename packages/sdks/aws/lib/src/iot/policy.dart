import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_state.dart';

/// Provides an IoT policy.
///
/// &gt; **NOTE on policy versions:** Updating this resource creates a new, default policy version. If updating the resource would exceed the maximum number of versions (5), the oldest non-default version of the policy is deleted before the new policy version is created.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pubsub = new aws.iot.Policy("pubsub", {
///     name: "PubSubToAnyTopic",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: ["iot:*"],
///             Effect: "Allow",
///             Resource: "*",
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// pubsub = aws.iot.Policy("pubsub",
///     name="PubSubToAnyTopic",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": ["iot:*"],
///             "Effect": "Allow",
///             "Resource": "*",
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
///     var pubsub = new Aws.Iot.Policy("pubsub", new()
///     {
///         Name = "PubSubToAnyTopic",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "iot:*",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = "*",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"iot:*",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = iot.NewPolicy(ctx, "pubsub", &iot.PolicyArgs{
/// 			Name:   pulumi.String("PubSubToAnyTopic"),
/// 			Policy: pulumi.String(json0),
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
/// resource "aws_iot_policy" "pubsub" {
///   name = "PubSubToAnyTopic"
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action"   = ["iot:*"]
///       "Effect"   = "Allow"
///       "Resource" = "*"
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iot.Policy;
/// import com.pulumi.aws.iot.PolicyArgs;
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
///         var pubsub = new Policy("pubsub", PolicyArgs.builder()
///             .name("PubSubToAnyTopic")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray("iot:*")),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pubsub:
///     type: aws:iot:Policy
///     properties:
///       name: PubSubToAnyTopic
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - iot:*
///               Effect: Allow
///               Resource: '*'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT policies using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iot/policy:Policy pubsub PubSubToAnyTopic
/// ```
class Policy extends pulumi.CustomResource {
  /// The ARN assigned by AWS to this policy.
  late final pulumi.Output<String> arn;
  /// The default version of this policy.
  late final pulumi.Output<String> defaultVersionId;
  /// The name of the policy.
  late final pulumi.Output<String> name;
  /// The policy document. This is a JSON formatted string. Use the [IoT Developer Guide](http://docs.aws.amazon.com/iot/latest/developerguide/iot-policies.html) for more information on IoT Policies.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_iot_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultVersionId = registerOutput<String>('defaultVersionId');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultVersionId = registerOutput<String>('defaultVersionId');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
