import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action.dart';
import 'listener_rule_args.dart';
import 'listener_rule_match.dart';
import 'listener_rule_state.dart';

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
///     match: {
///         httpMatch: {
///             pathMatch: {
///                 match: {
///                     prefix: "/example-path",
///                 },
///                 caseSensitive: true,
///             },
///             headerMatches: [{
///                 match: {
///                     exact: "example-contains",
///                 },
///                 name: "example-header",
///                 caseSensitive: false,
///             }],
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
///     name: "example",
///     listenerIdentifier: exampleAwsVpclatticeListener.listenerId,
///     serviceIdentifier: exampleAwsVpclatticeService.id,
///     priority: 20,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ListenerRule("example",
///     match={
///         "http_match": {
///             "path_match": {
///                 "match": {
///                     "prefix": "/example-path",
///                 },
///                 "case_sensitive": True,
///             },
///             "header_matches": [{
///                 "match": {
///                     "exact": "example-contains",
///                 },
///                 "name": "example-header",
///                 "case_sensitive": False,
///             }],
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
///     },
///     name="example",
///     listener_identifier=example_aws_vpclattice_listener["listenerId"],
///     service_identifier=example_aws_vpclattice_service["id"],
///     priority=20)
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
///         Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchArgs
///         {
///             HttpMatch = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchArgs
///             {
///                 PathMatch = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchPathMatchArgs
///                 {
///                     Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchPathMatchMatchArgs
///                     {
///                         Prefix = "/example-path",
///                     },
///                     CaseSensitive = true,
///                 },
///                 HeaderMatches = new[]
///                 {
///                     new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchHeaderMatchArgs
///                     {
///                         Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchHeaderMatchMatchArgs
///                         {
///                             Exact = "example-contains",
///                         },
///                         Name = "example-header",
///                         CaseSensitive = false,
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
///         Name = "example",
///         ListenerIdentifier = exampleAwsVpclatticeListener.ListenerId,
///         ServiceIdentifier = exampleAwsVpclatticeService.Id,
///         Priority = 20,
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
/// 			Match: &vpclattice.ListenerRuleMatchArgs{
/// 				HttpMatch: &vpclattice.ListenerRuleMatchHttpMatchArgs{
/// 					PathMatch: &vpclattice.ListenerRuleMatchHttpMatchPathMatchArgs{
/// 						Match: &vpclattice.ListenerRuleMatchHttpMatchPathMatchMatchArgs{
/// 							Prefix: pulumi.String("/example-path"),
/// 						},
/// 						CaseSensitive: pulumi.Bool(true),
/// 					},
/// 					HeaderMatches: vpclattice.ListenerRuleMatchHttpMatchHeaderMatchArray{
/// 						&vpclattice.ListenerRuleMatchHttpMatchHeaderMatchArgs{
/// 							Match: &vpclattice.ListenerRuleMatchHttpMatchHeaderMatchMatchArgs{
/// 								Exact: pulumi.String("example-contains"),
/// 							},
/// 							Name:          pulumi.String("example-header"),
/// 							CaseSensitive: pulumi.Bool(false),
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
/// 			Name:               pulumi.String("example"),
/// 			ListenerIdentifier: pulumi.Any(exampleAwsVpclatticeListener.ListenerId),
/// 			ServiceIdentifier:  pulumi.Any(exampleAwsVpclatticeService.Id),
/// 			Priority:           pulumi.Int(20),
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
/// resource "aws_vpclattice_listenerrule" "example" {
///   match = {
///     http_match = {
///       path_match = {
///         match = {
///           prefix = "/example-path"
///         }
///         case_sensitive = true
///       }
///       header_matches = [{
///         "match" = {
///           "exact" = "example-contains"
///         }
///         "name"          = "example-header"
///         "caseSensitive" = false
///       }]
///     }
///   }
///   action = {
///     forward = {
///       target_groups = [{
///         "targetGroupIdentifier" = exampleAwsVpclatticeTargetGroup.id
///         "weight"                = 1
///         }, {
///         "targetGroupIdentifier" = example2.id
///         "weight"                = 2
///       }]
///     }
///   }
///   name                = "example"
///   listener_identifier = exampleAwsVpclatticeListener.listenerId
///   service_identifier  = exampleAwsVpclatticeService.id
///   priority            = 20
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
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchHttpMatchHeaderMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleMatchHttpMatchHeaderMatchMatchArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleActionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleActionForwardArgs;
/// import com.pulumi.aws.vpclattice.inputs.ListenerRuleActionForwardTargetGroupArgs;
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
///         var example = new ListenerRule("example", ListenerRuleArgs.builder()
///             .match(ListenerRuleMatchArgs.builder()
///                 .httpMatch(ListenerRuleMatchHttpMatchArgs.builder()
///                     .pathMatch(ListenerRuleMatchHttpMatchPathMatchArgs.builder()
///                         .match(ListenerRuleMatchHttpMatchPathMatchMatchArgs.builder()
///                             .prefix("/example-path")
///                             .build())
///                         .caseSensitive(true)
///                         .build())
///                     .headerMatches(ListenerRuleMatchHttpMatchHeaderMatchArgs.builder()
///                         .match(ListenerRuleMatchHttpMatchHeaderMatchMatchArgs.builder()
///                             .exact("example-contains")
///                             .build())
///                         .name("example-header")
///                         .caseSensitive(false)
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
///             .name("example")
///             .listenerIdentifier(exampleAwsVpclatticeListener.listenerId())
///             .serviceIdentifier(exampleAwsVpclatticeService.id())
///             .priority(20)
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
///       match:
///         httpMatch:
///           pathMatch:
///             match:
///               prefix: /example-path
///             caseSensitive: true
///           headerMatches:
///             - match:
///                 exact: example-contains
///               name: example-header
///               caseSensitive: false
///       action:
///         forward:
///           targetGroups:
///             - targetGroupIdentifier: ${exampleAwsVpclatticeTargetGroup.id}
///               weight: 1
///             - targetGroupIdentifier: ${example2.id}
///               weight: 2
///       name: example
///       listenerIdentifier: ${exampleAwsVpclatticeListener.listenerId}
///       serviceIdentifier: ${exampleAwsVpclatticeService.id}
///       priority: 20
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
///     match: {
///         httpMatch: {
///             pathMatch: {
///                 match: {
///                     exact: "/example-path",
///                 },
///                 caseSensitive: false,
///             },
///         },
///     },
///     action: {
///         fixedResponse: {
///             statusCode: 404,
///         },
///     },
///     name: "example",
///     listenerIdentifier: exampleAwsVpclatticeListener.listenerId,
///     serviceIdentifier: exampleAwsVpclatticeService.id,
///     priority: 10,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ListenerRule("example",
///     match={
///         "http_match": {
///             "path_match": {
///                 "match": {
///                     "exact": "/example-path",
///                 },
///                 "case_sensitive": False,
///             },
///         },
///     },
///     action={
///         "fixed_response": {
///             "status_code": 404,
///         },
///     },
///     name="example",
///     listener_identifier=example_aws_vpclattice_listener["listenerId"],
///     service_identifier=example_aws_vpclattice_service["id"],
///     priority=10)
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
///         Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchArgs
///         {
///             HttpMatch = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchArgs
///             {
///                 PathMatch = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchPathMatchArgs
///                 {
///                     Match = new Aws.VpcLattice.Inputs.ListenerRuleMatchHttpMatchPathMatchMatchArgs
///                     {
///                         Exact = "/example-path",
///                     },
///                     CaseSensitive = false,
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
///         Name = "example",
///         ListenerIdentifier = exampleAwsVpclatticeListener.ListenerId,
///         ServiceIdentifier = exampleAwsVpclatticeService.Id,
///         Priority = 10,
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
/// 			Match: &vpclattice.ListenerRuleMatchArgs{
/// 				HttpMatch: &vpclattice.ListenerRuleMatchHttpMatchArgs{
/// 					PathMatch: &vpclattice.ListenerRuleMatchHttpMatchPathMatchArgs{
/// 						Match: &vpclattice.ListenerRuleMatchHttpMatchPathMatchMatchArgs{
/// 							Exact: pulumi.String("/example-path"),
/// 						},
/// 						CaseSensitive: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			Action: &vpclattice.ListenerRuleActionArgs{
/// 				FixedResponse: &vpclattice.ListenerRuleActionFixedResponseArgs{
/// 					StatusCode: pulumi.Int(404),
/// 				},
/// 			},
/// 			Name:               pulumi.String("example"),
/// 			ListenerIdentifier: pulumi.Any(exampleAwsVpclatticeListener.ListenerId),
/// 			ServiceIdentifier:  pulumi.Any(exampleAwsVpclatticeService.Id),
/// 			Priority:           pulumi.Int(10),
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
/// resource "aws_vpclattice_listenerrule" "example" {
///   match = {
///     http_match = {
///       path_match = {
///         match = {
///           exact = "/example-path"
///         }
///         case_sensitive = false
///       }
///     }
///   }
///   action = {
///     fixed_response = {
///       status_code = 404
///     }
///   }
///   name                = "example"
///   listener_identifier = exampleAwsVpclatticeListener.listenerId
///   service_identifier  = exampleAwsVpclatticeService.id
///   priority            = 10
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
///         var example = new ListenerRule("example", ListenerRuleArgs.builder()
///             .match(ListenerRuleMatchArgs.builder()
///                 .httpMatch(ListenerRuleMatchHttpMatchArgs.builder()
///                     .pathMatch(ListenerRuleMatchHttpMatchPathMatchArgs.builder()
///                         .match(ListenerRuleMatchHttpMatchPathMatchMatchArgs.builder()
///                             .exact("/example-path")
///                             .build())
///                         .caseSensitive(false)
///                         .build())
///                     .build())
///                 .build())
///             .action(ListenerRuleActionArgs.builder()
///                 .fixedResponse(ListenerRuleActionFixedResponseArgs.builder()
///                     .statusCode(404)
///                     .build())
///                 .build())
///             .name("example")
///             .listenerIdentifier(exampleAwsVpclatticeListener.listenerId())
///             .serviceIdentifier(exampleAwsVpclatticeService.id())
///             .priority(10)
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
///       match:
///         httpMatch:
///           pathMatch:
///             match:
///               exact: /example-path
///             caseSensitive: false
///       action:
///         fixedResponse:
///           statusCode: 404
///       name: example
///       listenerIdentifier: ${exampleAwsVpclatticeListener.listenerId}
///       serviceIdentifier: ${exampleAwsVpclatticeService.id}
///       priority: 10
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
  /// Action for the listener rule. See `action` Block for details.
  late final pulumi.Output<ListenerRuleAction> action;
  /// ARN for the listener rule.
  late final pulumi.Output<String> arn;
  /// ID or ARN of the listener.
  late final pulumi.Output<String> listenerIdentifier;
  /// Rule match. See `match` Block for details.
  late final pulumi.Output<ListenerRuleMatch> match;
  /// Name of the rule. Must be unique within the listener. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final pulumi.Output<String> name;
  /// Priority assigned to the rule. Each rule for a specific listener must have a unique priority. The lower the priority number the higher the priority.
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Unique identifier for the listener rule.
  late final pulumi.Output<String> ruleId;
  /// ID or ARN of the service.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    action = registerOutput<ListenerRuleAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    listenerIdentifier = registerOutput<String>('listenerIdentifier');
    match = registerOutput<ListenerRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    serviceIdentifier = registerOutput<String>('serviceIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ListenerRule] resource's state with the given [name] and [id].
  static ListenerRule get(
    String name,
    pulumi.Input<String> id, {
    ListenerRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ListenerRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ListenerRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/listenerRule:ListenerRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<ListenerRuleAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    listenerIdentifier = registerOutput<String>('listenerIdentifier');
    match = registerOutput<ListenerRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    serviceIdentifier = registerOutput<String>('serviceIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ListenerRule] resource.
  ListenerRule.reference(String urn)
    : super(
        'aws:vpclattice/listenerRule:ListenerRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<ListenerRuleAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    listenerIdentifier = registerOutput<String>('listenerIdentifier');
    match = registerOutput<ListenerRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    serviceIdentifier = registerOutput<String>('serviceIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
