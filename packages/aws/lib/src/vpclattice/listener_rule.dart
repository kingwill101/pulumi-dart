import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_args.dart';
import 'listener_rule_match.dart';

/// Resource for managing an AWS VPC Lattice Listener Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ListenerRule("example", {
///     name: "example",
///     listenerIdentifier: exampleAwsVpclatticeListener.listenerId,
///     serviceIdentifier: exampleAwsVpclatticeService.id,
///     priority: 20,
///     match: {
///         httpMatch: {
///             headerMatches: [{
///                 name: "example-header",
///                 caseSensitive: false,
///                 match: {
///                     exact: "example-contains",
///                 },
///             }],
///             pathMatch: {
///                 caseSensitive: true,
///                 match: {
///                     prefix: "/example-path",
///                 },
///             },
///         },
///     },
///     action: {
///         forward: {
///             targetGroups: [
///                 {
///                     targetGroupIdentifier: exampleAwsVpclatticeTargetGroup.id,
///                     weight: 1,
///                 },
///                 {
///                     targetGroupIdentifier: example2.id,
///                     weight: 2,
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ListenerRule("example",
///     name="example",
///     listener_identifier=example_aws_vpclattice_listener["listenerId"],
///     service_identifier=example_aws_vpclattice_service["id"],
///     priority=20,
///     match={
///         "http_match": {
///             "header_matches": [{
///                 "name": "example-header",
///                 "case_sensitive": False,
///                 "match": {
///                     "exact": "example-contains",
///                 },
///             }],
///             "path_match": {
///                 "case_sensitive": True,
///                 "match": {
///                     "prefix": "/example-path",
///                 },
///             },
///         },
///     },
///     action={
///         "forward": {
///             "target_groups": [
///                 {
///                     "target_group_identifier": example_aws_vpclattice_target_group["id"],
///                     "weight": 1,
///                 },
///                 {
///                     "target_group_identifier": example2["id"],
///                     "weight": 2,
///                 },
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ListenerRule("example", new()
///     {
///         Name = "example",
///         ListenerIdentifier = exampleAwsVpclatticeListener.ListenerId,
///         ServiceIdentifier = exampleAwsVpclatticeService.Id,
///         Priority = 20,
///         Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchArgs
///         {
///             HttpMatch = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchArgs
///             {
///                 HeaderMatches = new[]
///                 {
///                     new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchHeaderMatchArgs
///                     {
///                         Name = "example-header",
///                         CaseSensitive = false,
///                         Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchHeaderMatchMatchArgs
///                         {
///                             Exact = "example-contains",
///                         },
///                     },
///                 },
///                 PathMatch = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchPathMatchArgs
///                 {
///                     CaseSensitive = true,
///                     Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchPathMatchMatchArgs
///                     {
///                         Prefix = "/example-path",
///                     },
///                 },
///             },
///         },
///         Action = new Aws.VpcLattice.Inputs.ListenerRuleActionArgs
///         {
///             Forward = new Aws.VpcLattice.Inputs.ListenerRuleActionForwardArgs
///             {
///                 TargetGroups = new[]
///                 {
///                     new Aws.VpcLattice.Inputs.ListenerRuleActionForwardTargetGroupArgs
///                     {
///                         TargetGroupIdentifier = exampleAwsVpclatticeTargetGroup.Id,
///                         Weight = 1,
///                     },
///                     new Aws.VpcLattice.Inputs.ListenerRuleActionForwardTargetGroupArgs
///                     {
///                         TargetGroupIdentifier = example2.Id,
///                         Weight = 2,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewListenerRule(ctx, "example", &vpclattice.ListenerRuleArgs{
/// 			Name:               pulumi.String("example"),
/// 			ListenerIdentifier: pulumi.Any(exampleAwsVpclatticeListener.ListenerId),
/// 			ServiceIdentifier:  pulumi.Any(exampleAwsVpclatticeService.Id),
/// 			Priority:           pulumi.Int(20),
/// 			Match: &vpclattice.ListenerRuleMatchArgs{
/// 				HttpMatch: &vpclattice.ListenerRuleMatchHttpMatchArgs{
/// 					HeaderMatches: vpclattice.ListenerRuleMatchHttpMatchHeaderMatchArray{
/// 						&vpclattice.ListenerRuleMatchHttpMatchHeaderMatchArgs{
/// 							Name:          pulumi.String("example-header"),
/// 							CaseSensitive: pulumi.Bool(false),
/// 							Match: &vpclattice.ListenerRuleMatchHttpMatchHeaderMatchMatchArgs{
/// 								Exact: pulumi.String("example-contains"),
/// 							},
/// 						},
/// 					},
/// 					PathMatch: &vpclattice.ListenerRuleMatchHttpMatchPathMatchArgs{
/// 						CaseSensitive: pulumi.Bool(true),
/// 						Match: &vpclattice.ListenerRuleMatchHttpMatchPathMatchMatchArgs{
/// 							Prefix: pulumi.String("/example-path"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Action: &vpclattice.ListenerRuleActionArgs{
/// 				Forward: &vpclattice.ListenerRuleActionForwardArgs{
/// 					TargetGroups: vpclattice.ListenerRuleActionForwardTargetGroupArray{
/// 						&vpclattice.ListenerRuleActionForwardTargetGroupArgs{
/// 							TargetGroupIdentifier: pulumi.Any(exampleAwsVpclatticeTargetGroup.Id),
/// 							Weight:                pulumi.Int(1),
/// 						},
/// 						&vpclattice.ListenerRuleActionForwardTargetGroupArgs{
/// 							TargetGroupIdentifier: pulumi.Any(example2.Id),
/// 							Weight:                pulumi.Int(2),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.ListenerRule;
/// import com.pulumi.aws.vpclattice.ListenerRuleArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchHttpMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchHttpMatchPathMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchHttpMatchPathMatchMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleActionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleActionForwardArgs;
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
///         var example = new ListenerRule("example", ListenerRuleArgs.builder()
///             .name("example")
///             .listenerIdentifier(exampleAwsVpclatticeListener.listenerId())
///             .serviceIdentifier(exampleAwsVpclatticeService.id())
///             .priority(20)
///             .match(ListenerRuleMatchArgs.builder()
///                 .httpMatch(ListenerRuleMatchHttpMatchArgs.builder()
///                     .headerMatches(ListenerRuleMatchHttpMatchHeaderMatchArgs.builder()
///                         .name("example-header")
///                         .caseSensitive(false)
///                         .match(ListenerRuleMatchHttpMatchHeaderMatchMatchArgs.builder()
///                             .exact("example-contains")
///                             .build())
///                         .build())
///                     .pathMatch(ListenerRuleMatchHttpMatchPathMatchArgs.builder()
///                         .caseSensitive(true)
///                         .match(ListenerRuleMatchHttpMatchPathMatchMatchArgs.builder()
///                             .prefix("/example-path")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .action(ListenerRuleActionArgs.builder()
///                 .forward(ListenerRuleActionForwardArgs.builder()
///                     .targetGroups(
///                         ListenerRuleActionForwardTargetGroupArgs.builder()
///                             .targetGroupIdentifier(exampleAwsVpclatticeTargetGroup.id())
///                             .weight(1)
///                             .build(),
///                         ListenerRuleActionForwardTargetGroupArgs.builder()
///                             .targetGroupIdentifier(example2.id())
///                             .weight(2)
///                             .build())
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
///     type: aws:vpclattice:ListenerRule
///     properties:
///       name: example
///       listenerIdentifier: ${exampleAwsVpclatticeListener.listenerId}
///       serviceIdentifier: ${exampleAwsVpclatticeService.id}
///       priority: 20
///       match:
///         httpMatch:
///           headerMatches:
///             - name: example-header
///               caseSensitive: false
///               match:
///                 exact: example-contains
///           pathMatch:
///             caseSensitive: true
///             match:
///               prefix: /example-path
///       action:
///         forward:
///           targetGroups:
///             - targetGroupIdentifier: ${exampleAwsVpclatticeTargetGroup.id}
///               weight: 1
///             - targetGroupIdentifier: ${example2.id}
///               weight: 2
/// ```
///
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ListenerRule("example", {
///     name: "example",
///     listenerIdentifier: exampleAwsVpclatticeListener.listenerId,
///     serviceIdentifier: exampleAwsVpclatticeService.id,
///     priority: 10,
///     match: {
///         httpMatch: {
///             pathMatch: {
///                 caseSensitive: false,
///                 match: {
///                     exact: "/example-path",
///                 },
///             },
///         },
///     },
///     action: {
///         fixedResponse: {
///             statusCode: 404,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ListenerRule("example",
///     name="example",
///     listener_identifier=example_aws_vpclattice_listener["listenerId"],
///     service_identifier=example_aws_vpclattice_service["id"],
///     priority=10,
///     match={
///         "http_match": {
///             "path_match": {
///                 "case_sensitive": False,
///                 "match": {
///                     "exact": "/example-path",
///                 },
///             },
///         },
///     },
///     action={
///         "fixed_response": {
///             "status_code": 404,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ListenerRule("example", new()
///     {
///         Name = "example",
///         ListenerIdentifier = exampleAwsVpclatticeListener.ListenerId,
///         ServiceIdentifier = exampleAwsVpclatticeService.Id,
///         Priority = 10,
///         Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchArgs
///         {
///             HttpMatch = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchArgs
///             {
///                 PathMatch = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchPathMatchArgs
///                 {
///                     CaseSensitive = false,
///                     Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchPathMatchMatchArgs
///                     {
///                         Exact = "/example-path",
///                     },
///                 },
///             },
///         },
///         Action = new Aws.VpcLattice.Inputs.ListenerRuleActionArgs
///         {
///             FixedResponse = new Aws.VpcLattice.Inputs.ListenerRuleActionFixedResponseArgs
///             {
///                 StatusCode = 404,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewListenerRule(ctx, "example", &vpclattice.ListenerRuleArgs{
/// 			Name:               pulumi.String("example"),
/// 			ListenerIdentifier: pulumi.Any(exampleAwsVpclatticeListener.ListenerId),
/// 			ServiceIdentifier:  pulumi.Any(exampleAwsVpclatticeService.Id),
/// 			Priority:           pulumi.Int(10),
/// 			Match: &vpclattice.ListenerRuleMatchArgs{
/// 				HttpMatch: &vpclattice.ListenerRuleMatchHttpMatchArgs{
/// 					PathMatch: &vpclattice.ListenerRuleMatchHttpMatchPathMatchArgs{
/// 						CaseSensitive: pulumi.Bool(false),
/// 						Match: &vpclattice.ListenerRuleMatchHttpMatchPathMatchMatchArgs{
/// 							Exact: pulumi.String("/example-path"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Action: &vpclattice.ListenerRuleActionArgs{
/// 				FixedResponse: &vpclattice.ListenerRuleActionFixedResponseArgs{
/// 					StatusCode: pulumi.Int(404),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.ListenerRule;
/// import com.pulumi.aws.vpclattice.ListenerRuleArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchHttpMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchHttpMatchPathMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchHttpMatchPathMatchMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleActionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleActionFixedResponseArgs;
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
///         var example = new ListenerRule("example", ListenerRuleArgs.builder()
///             .name("example")
///             .listenerIdentifier(exampleAwsVpclatticeListener.listenerId())
///             .serviceIdentifier(exampleAwsVpclatticeService.id())
///             .priority(10)
///             .match(ListenerRuleMatchArgs.builder()
///                 .httpMatch(ListenerRuleMatchHttpMatchArgs.builder()
///                     .pathMatch(ListenerRuleMatchHttpMatchPathMatchArgs.builder()
///                         .caseSensitive(false)
///                         .match(ListenerRuleMatchHttpMatchPathMatchMatchArgs.builder()
///                             .exact("/example-path")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .action(ListenerRuleActionArgs.builder()
///                 .fixedResponse(ListenerRuleActionFixedResponseArgs.builder()
///                     .statusCode(404)
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
///     type: aws:vpclattice:ListenerRule
///     properties:
///       name: example
///       listenerIdentifier: ${exampleAwsVpclatticeListener.listenerId}
///       serviceIdentifier: ${exampleAwsVpclatticeService.id}
///       priority: 10
///       match:
///         httpMatch:
///           pathMatch:
///             caseSensitive: false
///             match:
///               exact: /example-path
///       action:
///         fixedResponse:
///           statusCode: 404
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Listener Rule using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/listenerRule:ListenerRule example service123/listener456/rule789
/// ```
class ListenerRule extends pulumi.CustomResource {
  /// The action for the listener rule.
  /// See `action` Block for details.
  late final pulumi.Output<ListenerRuleAction> action;
  /// The ARN for the listener rule.
  late final pulumi.Output<String> arn;
  /// The ID or Amazon Resource Name (ARN) of the listener.
  late final pulumi.Output<String> listenerIdentifier;
  /// The rule match.
  /// See `match` Block
  late final pulumi.Output<ListenerRuleMatch> match;
  /// The name of the rule. The name must be unique within the listener. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final pulumi.Output<String> name;
  /// The priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Unique identifier for the listener rule.
  late final pulumi.Output<String> ruleId;
  /// The ID or Amazon Resource Identifier (ARN) of the service.
  late final pulumi.Output<String> serviceIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ListenerRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListenerRule]. {@macro pulumi_vpclattice_listener_rule_listener_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListenerRule(
    String name, {
    ListenerRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/listenerRule:ListenerRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<ListenerRuleAction>('action');
    this.arn = registerOutput<String>('arn');
    this.listenerIdentifier = registerOutput<String>('listenerIdentifier');
    this.match = registerOutput<ListenerRuleMatch>('match');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.ruleId = registerOutput<String>('ruleId');
    this.serviceIdentifier = registerOutput<String>('serviceIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
