import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_args.dart';
import 'traffic_policy_state.dart';

/// Manages an SES Mail Manager Traffic Policy.
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
/// const example = new aws.mailmanager.TrafficPolicy("example", {
///     defaultAction: "ALLOW",
///     name: "example",
///     policyStatements: [{
///         action: "DENY",
///         conditions: [{
///             ipExpression: {
///                 operator: "CIDR_MATCHES",
///                 values: ["192.0.2.0/24"],
///                 evaluate: {
///                     attribute: "SENDER_IP",
///                 },
///             },
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mailmanager.TrafficPolicy("example",
///     default_action="ALLOW",
///     name="example",
///     policy_statements=[{
///         "action": "DENY",
///         "conditions": [{
///             "ip_expression": {
///                 "operator": "CIDR_MATCHES",
///                 "values": ["192.0.2.0/24"],
///                 "evaluate": {
///                     "attribute": "SENDER_IP",
///                 },
///             },
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MailManager.TrafficPolicy("example", new()
///     {
///         DefaultAction = "ALLOW",
///         Name = "example",
///         PolicyStatements = new[]
///         {
///             new Aws.MailManager.Inputs.TrafficPolicyPolicyStatementArgs
///             {
///                 Action = "DENY",
///                 Conditions = new[]
///                 {
///                     new Aws.MailManager.Inputs.TrafficPolicyPolicyStatementConditionArgs
///                     {
///                         IpExpression = new Aws.MailManager.Inputs.TrafficPolicyPolicyStatementConditionIpExpressionArgs
///                         {
///                             Operator = "CIDR_MATCHES",
///                             Values = new[]
///                             {
///                                 "192.0.2.0/24",
///                             },
///                             Evaluate = new Aws.MailManager.Inputs.TrafficPolicyPolicyStatementConditionIpExpressionEvaluateArgs
///                             {
///                                 Attribute = "SENDER_IP",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mailmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mailmanager.NewTrafficPolicy(ctx, "example", &mailmanager.TrafficPolicyArgs{
/// 			DefaultAction: pulumi.String("ALLOW"),
/// 			Name:          pulumi.String("example"),
/// 			PolicyStatements: mailmanager.TrafficPolicyPolicyStatementArray{
/// 				&mailmanager.TrafficPolicyPolicyStatementArgs{
/// 					Action: pulumi.String("DENY"),
/// 					Conditions: mailmanager.TrafficPolicyPolicyStatementConditionArray{
/// 						&mailmanager.TrafficPolicyPolicyStatementConditionArgs{
/// 							IpExpression: &mailmanager.TrafficPolicyPolicyStatementConditionIpExpressionArgs{
/// 								Operator: pulumi.String("CIDR_MATCHES"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("192.0.2.0/24"),
/// 								},
/// 								Evaluate: &mailmanager.TrafficPolicyPolicyStatementConditionIpExpressionEvaluateArgs{
/// 									Attribute: pulumi.String("SENDER_IP"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// resource "aws_mailmanager_trafficpolicy" "example" {
///   default_action = "ALLOW"
///   name           = "example"
///   policy_statements {
///     action = "DENY"
///     conditions {
///       ip_expression = {
///         operator = "CIDR_MATCHES"
///         values   = ["192.0.2.0/24"]
///         evaluate = {
///           attribute = "SENDER_IP"
///         }
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mailmanager.TrafficPolicy;
/// import com.pulumi.aws.mailmanager.TrafficPolicyArgs;
/// import com.pulumi.aws.mailmanager.inputs.TrafficPolicyPolicyStatementArgs;
/// import com.pulumi.aws.mailmanager.inputs.TrafficPolicyPolicyStatementConditionArgs;
/// import com.pulumi.aws.mailmanager.inputs.TrafficPolicyPolicyStatementConditionIpExpressionArgs;
/// import com.pulumi.aws.mailmanager.inputs.TrafficPolicyPolicyStatementConditionIpExpressionEvaluateArgs;
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
///         var example = new TrafficPolicy("example", TrafficPolicyArgs.builder()
///             .defaultAction("ALLOW")
///             .name("example")
///             .policyStatements(TrafficPolicyPolicyStatementArgs.builder()
///                 .action("DENY")
///                 .conditions(TrafficPolicyPolicyStatementConditionArgs.builder()
///                     .ipExpression(TrafficPolicyPolicyStatementConditionIpExpressionArgs.builder()
///                         .operator("CIDR_MATCHES")
///                         .values("192.0.2.0/24")
///                         .evaluate(TrafficPolicyPolicyStatementConditionIpExpressionEvaluateArgs.builder()
///                             .attribute("SENDER_IP")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mailmanager:TrafficPolicy
///     properties:
///       defaultAction: ALLOW
///       name: example
///       policyStatements:
///         - action: DENY
///           conditions:
///             - ipExpression:
///                 operator: CIDR_MATCHES
///                 values:
///                   - 192.0.2.0/24
///                 evaluate:
///                   attribute: SENDER_IP
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the traffic policy.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an SES Mail Manager Traffic Policy using its ID. For example:
///
/// ```sh
/// $ pulumi import aws:mailmanager/trafficPolicy:TrafficPolicy example example-id
/// ```
class TrafficPolicy extends pulumi.CustomResource {
  /// ARN of the traffic policy.
  late final pulumi.Output<String> arn;
  /// Timestamp when the traffic policy was created.
  late final pulumi.Output<String> createdTimestamp;
  /// Default action for traffic that does not match any policy statement. Valid values are `ALLOW` and `DENY`.
  late final pulumi.Output<String> defaultAction;
  /// Timestamp when the traffic policy was last updated.
  late final pulumi.Output<String> lastUpdatedTimestamp;
  /// Maximum message size, in bytes, allowed by the traffic policy.
  late final pulumi.Output<int?> maxMessageSizeBytes;
  /// Name of the traffic policy.
  late final pulumi.Output<String> name;
  /// Traffic policy statements. See `policyStatement` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<Map<String, dynamic>>?> policyStatements;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [TrafficPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficPolicy]. {@macro pulumi_mailmanager_traffic_policy_traffic_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficPolicy(
    String name, {
    TrafficPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/trafficPolicy:TrafficPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    defaultAction = registerOutput<String>('defaultAction');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    maxMessageSizeBytes = registerOutput<int?>('maxMessageSizeBytes');
    this.name = registerOutput<String>('name');
    policyStatements = registerOutput<List<Map<String, dynamic>>?>('policyStatements');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [TrafficPolicy] resource's state with the given [name] and [id].
  static TrafficPolicy get(
    String name,
    pulumi.Input<String> id, {
    TrafficPolicyState? state,
  }) {
    return TrafficPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/trafficPolicy:TrafficPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    defaultAction = registerOutput<String>('defaultAction');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    maxMessageSizeBytes = registerOutput<int?>('maxMessageSizeBytes');
    this.name = registerOutput<String>('name');
    policyStatements = registerOutput<List<Map<String, dynamic>>?>('policyStatements');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
