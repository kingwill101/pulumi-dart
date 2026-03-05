import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_rule_args.dart';
import 'routing_rule_state.dart';

/// Resource for managing an AWS API Gateway V2 Routing Rule.
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
/// const example = new aws.apigatewayv2.RoutingRule("example", {
///     domainName: "test.example.com",
///     conditions: [{
///         matchHeaders: {
///             anyOf: {
///                 header: "X-Example-Header",
///                 valueGlob: "example-value-*",
///             },
///         },
///         matchBasePaths: {
///             anyOfs: [
///                 "example-path",
///                 "another-path",
///             ],
///         },
///     }],
///     actions: [{
///         invokeApi: {
///             apiId: "example-api-id",
///             stage: "example-stage",
///             stripBasePath: true,
///         },
///     }],
///     priority: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.RoutingRule("example",
///     domain_name="test.example.com",
///     conditions=[{
///         "match_headers": {
///             "any_of": {
///                 "header": "X-Example-Header",
///                 "value_glob": "example-value-*",
///             },
///         },
///         "match_base_paths": {
///             "any_ofs": [
///                 "example-path",
///                 "another-path",
///             ],
///         },
///     }],
///     actions=[{
///         "invoke_api": {
///             "api_id": "example-api-id",
///             "stage": "example-stage",
///             "strip_base_path": True,
///         },
///     }],
///     priority=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.RoutingRule("example", new()
///     {
///         DomainName = "test.example.com",
///         Conditions = new[]
///         {
///             new Aws.ApiGatewayV2.Inputs.RoutingRuleConditionArgs
///             {
///                 MatchHeaders = new Aws.ApiGatewayV2.Inputs.RoutingRuleConditionMatchHeadersArgs
///                 {
///                     AnyOf = new Aws.ApiGatewayV2.Inputs.RoutingRuleConditionMatchHeadersAnyOfArgs
///                     {
///                         Header = "X-Example-Header",
///                         ValueGlob = "example-value-*",
///                     },
///                 },
///                 MatchBasePaths = new Aws.ApiGatewayV2.Inputs.RoutingRuleConditionMatchBasePathsArgs
///                 {
///                     AnyOfs = new[]
///                     {
///                         "example-path",
///                         "another-path",
///                     },
///                 },
///             },
///         },
///         Actions = new[]
///         {
///             new Aws.ApiGatewayV2.Inputs.RoutingRuleActionArgs
///             {
///                 InvokeApi = new Aws.ApiGatewayV2.Inputs.RoutingRuleActionInvokeApiArgs
///                 {
///                     ApiId = "example-api-id",
///                     Stage = "example-stage",
///                     StripBasePath = true,
///                 },
///             },
///         },
///         Priority = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.NewRoutingRule(ctx, "example", &apigatewayv2.RoutingRuleArgs{
/// 			DomainName: pulumi.String("test.example.com"),
/// 			Conditions: apigatewayv2.RoutingRuleConditionArray{
/// 				&apigatewayv2.RoutingRuleConditionArgs{
/// 					MatchHeaders: &apigatewayv2.RoutingRuleConditionMatchHeadersArgs{
/// 						AnyOf: &apigatewayv2.RoutingRuleConditionMatchHeadersAnyOfArgs{
/// 							Header:    pulumi.String("X-Example-Header"),
/// 							ValueGlob: pulumi.String("example-value-*"),
/// 						},
/// 					},
/// 					MatchBasePaths: &apigatewayv2.RoutingRuleConditionMatchBasePathsArgs{
/// 						AnyOfs: pulumi.StringArray{
/// 							pulumi.String("example-path"),
/// 							pulumi.String("another-path"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Actions: apigatewayv2.RoutingRuleActionArray{
/// 				&apigatewayv2.RoutingRuleActionArgs{
/// 					InvokeApi: &apigatewayv2.RoutingRuleActionInvokeApiArgs{
/// 						ApiId:         pulumi.String("example-api-id"),
/// 						Stage:         pulumi.String("example-stage"),
/// 						StripBasePath: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			Priority: pulumi.Int(1),
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
/// import com.pulumi.aws.apigatewayv2.RoutingRule;
/// import com.pulumi.aws.apigatewayv2.RoutingRuleArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.RoutingRuleConditionArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.RoutingRuleConditionMatchHeadersArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.RoutingRuleConditionMatchHeadersAnyOfArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.RoutingRuleConditionMatchBasePathsArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.RoutingRuleActionArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.RoutingRuleActionInvokeApiArgs;
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
///         var example = new RoutingRule("example", RoutingRuleArgs.builder()
///             .domainName("test.example.com")
///             .conditions(RoutingRuleConditionArgs.builder()
///                 .matchHeaders(RoutingRuleConditionMatchHeadersArgs.builder()
///                     .anyOf(RoutingRuleConditionMatchHeadersAnyOfArgs.builder()
///                         .header("X-Example-Header")
///                         .valueGlob("example-value-*")
///                         .build())
///                     .build())
///                 .matchBasePaths(RoutingRuleConditionMatchBasePathsArgs.builder()
///                     .anyOfs(
///                         "example-path",
///                         "another-path")
///                     .build())
///                 .build())
///             .actions(RoutingRuleActionArgs.builder()
///                 .invokeApi(RoutingRuleActionInvokeApiArgs.builder()
///                     .apiId("example-api-id")
///                     .stage("example-stage")
///                     .stripBasePath(true)
///                     .build())
///                 .build())
///             .priority(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:RoutingRule
///     properties:
///       domainName: test.example.com
///       conditions:
///         - matchHeaders:
///             anyOf:
///               header: X-Example-Header
///               valueGlob: example-value-*
///           matchBasePaths:
///             anyOfs:
///               - example-path
///               - another-path
///       actions:
///         - invokeApi:
///             apiId: example-api-id
///             stage: example-stage
///             stripBasePath: true
///       priority: 1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway V2 Routing Rule using the `routing_rule_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/routingRule:RoutingRule example arn:aws:apigateway:us-east-1:123456789012:/domainnames/example.com/routingrules/rule1
/// ```
class RoutingRule extends pulumi.CustomResource {
  /// Configuration of resulting action based on matching routing rules condition. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> actions;
  /// Conditions configuration. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;
  /// Domain name. Must be between 1 and 512 characters in length.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;
  /// The order of rule evaluation. Priority is evaluated from the lowest value to the highest value. Rules can't have the same priority. Value must be between 1 and 1,000,000.
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the Routing Rule.
  late final pulumi.Output<String> routingRuleArn;
  /// ID of the Routing Rule.
  late final pulumi.Output<String> routingRuleId;

  /// Creates a new [RoutingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutingRule]. {@macro pulumi_apigatewayv2_routing_rule_routing_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutingRule(
    String name, {
    RoutingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/routingRule:RoutingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    domainName = registerOutput<String>('domainName');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    routingRuleArn = registerOutput<String>('routingRuleArn');
    routingRuleId = registerOutput<String>('routingRuleId');
  }

  /// Gets an existing [RoutingRule] resource's state with the given [name] and [id].
  static RoutingRule get(
    String name,
    pulumi.Input<String> id, {
    RoutingRuleState? state,
  }) {
    return RoutingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoutingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/routingRule:RoutingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    domainName = registerOutput<String>('domainName');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    routingRuleArn = registerOutput<String>('routingRuleArn');
    routingRuleId = registerOutput<String>('routingRuleId');
  }
}
