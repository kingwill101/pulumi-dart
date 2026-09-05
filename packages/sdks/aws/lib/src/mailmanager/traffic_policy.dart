import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_args.dart';
import 'traffic_policy_policy_statement.dart';
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
///     policyStatements: [{
///         conditions: [{
///             ipExpression: {
///                 evaluate: {
///                     attribute: "SENDER_IP",
///                 },
///                 operator: "CIDR_MATCHES",
///                 values: ["192.0.2.0/24"],
///             },
///         }],
///         action: "DENY",
///     }],
///     defaultAction: "ALLOW",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mailmanager.TrafficPolicy("example",
///     policy_statements=[{
///         "conditions": [{
///             "ip_expression": {
///                 "evaluate": {
///                     "attribute": "SENDER_IP",
///                 },
///                 "operator": "CIDR_MATCHES",
///                 "values": ["192.0.2.0/24"],
///             },
///         }],
///         "action": "DENY",
///     }],
///     default_action="ALLOW",
///     name="example")
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
///         PolicyStatements = new[]
///         {
///             new Aws.MailManager.Inputs.TrafficPolicyPolicyStatementArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.MailManager.Inputs.TrafficPolicyPolicyStatementConditionArgs
///                     {
///                         IpExpression = new Aws.MailManager.Inputs.TrafficPolicyPolicyStatementConditionIpExpressionArgs
///                         {
///                             Evaluate = new Aws.MailManager.Inputs.TrafficPolicyPolicyStatementConditionIpExpressionEvaluateArgs
///                             {
///                                 Attribute = "SENDER_IP",
///                             },
///                             Operator = "CIDR_MATCHES",
///                             Values = new[]
///                             {
///                                 "192.0.2.0/24",
///                             },
///                         },
///                     },
///                 },
///                 Action = "DENY",
///             },
///         },
///         DefaultAction = "ALLOW",
///         Name = "example",
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
/// 			PolicyStatements: mailmanager.TrafficPolicyPolicyStatementArray{
/// 				&mailmanager.TrafficPolicyPolicyStatementArgs{
/// 					Conditions: mailmanager.TrafficPolicyPolicyStatementConditionArray{
/// 						&mailmanager.TrafficPolicyPolicyStatementConditionArgs{
/// 							IpExpression: &mailmanager.TrafficPolicyPolicyStatementConditionIpExpressionArgs{
/// 								Evaluate: &mailmanager.TrafficPolicyPolicyStatementConditionIpExpressionEvaluateArgs{
/// 									Attribute: pulumi.String("SENDER_IP"),
/// 								},
/// 								Operator: pulumi.String("CIDR_MATCHES"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("192.0.2.0/24"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Action: pulumi.String("DENY"),
/// 				},
/// 			},
/// 			DefaultAction: pulumi.String("ALLOW"),
/// 			Name:          pulumi.String("example"),
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
///   policy_statements {
///     conditions {
///       ip_expression = {
///         evaluate = {
///           attribute = "SENDER_IP"
///         }
///         operator = "CIDR_MATCHES"
///         values   = ["192.0.2.0/24"]
///       }
///     }
///     action = "DENY"
///   }
///   default_action = "ALLOW"
///   name           = "example"
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
///             .policyStatements(TrafficPolicyPolicyStatementArgs.builder()
///                 .conditions(TrafficPolicyPolicyStatementConditionArgs.builder()
///                     .ipExpression(TrafficPolicyPolicyStatementConditionIpExpressionArgs.builder()
///                         .evaluate(TrafficPolicyPolicyStatementConditionIpExpressionEvaluateArgs.builder()
///                             .attribute("SENDER_IP")
///                             .build())
///                         .operator("CIDR_MATCHES")
///                         .values("192.0.2.0/24")
///                         .build())
///                     .build())
///                 .action("DENY")
///                 .build())
///             .defaultAction("ALLOW")
///             .name("example")
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
///       policyStatements:
///         - conditions:
///             - ipExpression:
///                 evaluate:
///                   attribute: SENDER_IP
///                 operator: CIDR_MATCHES
///                 values:
///                   - 192.0.2.0/24
///           action: DENY
///       defaultAction: ALLOW
///       name: example
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
  late final pulumi.Output<List<TrafficPolicyPolicyStatement>?> policyStatements;
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    defaultAction = registerOutput<String>('defaultAction');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    maxMessageSizeBytes = registerOutput<int?>('maxMessageSizeBytes');
    this.name = registerOutput<String>('name');
    policyStatements = registerOutput<List<TrafficPolicyPolicyStatement>?>('policyStatements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrafficPolicyPolicyStatement>(guardedValue, (value) => TrafficPolicyPolicyStatement.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [TrafficPolicy] resource's state with the given [name] and [id].
  static TrafficPolicy get(
    String name,
    pulumi.Input<String> id, {
    TrafficPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TrafficPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    policyStatements = registerOutput<List<TrafficPolicyPolicyStatement>?>('policyStatements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrafficPolicyPolicyStatement>(guardedValue, (value) => TrafficPolicyPolicyStatement.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [TrafficPolicy] resource.
  TrafficPolicy.reference(String urn)
    : super(
        'aws:mailmanager/trafficPolicy:TrafficPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    defaultAction = registerOutput<String>('defaultAction');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    maxMessageSizeBytes = registerOutput<int?>('maxMessageSizeBytes');
    this.name = registerOutput<String>('name');
    policyStatements = registerOutput<List<TrafficPolicyPolicyStatement>?>('policyStatements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrafficPolicyPolicyStatement>(guardedValue, (value) => TrafficPolicyPolicyStatement.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
