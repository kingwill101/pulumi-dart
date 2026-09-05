import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_log_args.dart';
import 'query_log_state.dart';

/// Provides a Route53 query logging configuration resource.
///
/// &gt; **NOTE:** There are restrictions on the configuration of query logging. Notably,
/// the CloudWatch log group must be in the `us-east-1` region,
/// a permissive CloudWatch log resource policy must be in place, and
/// the Route53 hosted zone must be public.
/// See [Configuring Logging for DNS Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html?console_help=true#query-logs-configuring) for additional details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Example Route53 zone with query logging
/// const exampleCom = new aws.route53.Zone("example_com", {name: "example.com"});
/// const awsRoute53ExampleCom = new aws.cloudwatch.LogGroup("aws_route53_example_com", {
///     name: pulumi.interpolate`/aws/route53/${exampleCom.name}`,
///     retentionInDays: 30,
/// });
/// // Example CloudWatch log resource policy to allow Route53 to write logs
/// // to any log group under /aws/route53/*
/// const route53_query_logging_policy = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             identifiers: ["route53.amazonaws.com"],
///             type: "Service",
///         }],
///         actions: [
///             "logs:CreateLogStream",
///             "logs:PutLogEvents",
///         ],
///         resources: ["arn:aws:logs:*:*:log-group:/aws/route53/*"],
///     }],
/// });
/// const route53_query_logging_policyLogResourcePolicy = new aws.cloudwatch.LogResourcePolicy("route53-query-logging-policy", {
///     policyDocument: route53_query_logging_policy.then(route53_query_logging_policy => route53_query_logging_policy.json),
///     policyName: "route53-query-logging-policy",
/// });
/// const exampleComQueryLog = new aws.route53.QueryLog("example_com", {
///     cloudwatchLogGroupArn: awsRoute53ExampleCom.arn,
///     zoneId: exampleCom.zoneId,
/// }, {
///     dependsOn: [route53_query_logging_policyLogResourcePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Example Route53 zone with query logging
/// example_com = aws.route53.Zone("example_com", name="example.com")
/// aws_route53_example_com = aws.cloudwatch.LogGroup("aws_route53_example_com",
///     name=example_com.name.apply(lambda name: f"/aws/route53/{name}"),
///     retention_in_days=30)
/// # Example CloudWatch log resource policy to allow Route53 to write logs
/// # to any log group under /aws/route53/*
/// route53_query_logging_policy = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "identifiers": ["route53.amazonaws.com"],
///         "type": "Service",
///     }],
///     "actions": [
///         "logs:CreateLogStream",
///         "logs:PutLogEvents",
///     ],
///     "resources": ["arn:aws:logs:*:*:log-group:/aws/route53/*"],
/// }])
/// route53_query_logging_policy_log_resource_policy = aws.cloudwatch.LogResourcePolicy("route53-query-logging-policy",
///     policy_document=route53_query_logging_policy.json,
///     policy_name="route53-query-logging-policy")
/// example_com_query_log = aws.route53.QueryLog("example_com",
///     cloudwatch_log_group_arn=aws_route53_example_com.arn,
///     zone_id=example_com.zone_id,
///     opts = pulumi.ResourceOptions(depends_on=[route53_query_logging_policy_log_resource_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Example Route53 zone with query logging
///     var exampleCom = new Aws.Route53.Zone("example_com", new()
///     {
///         Name = "example.com",
///     });
///
///     var awsRoute53ExampleCom = new Aws.CloudWatch.LogGroup("aws_route53_example_com", new()
///     {
///         Name = exampleCom.Name.Apply(name => $"/aws/route53/{name}"),
///         RetentionInDays = 30,
///     });
///
///     // Example CloudWatch log resource policy to allow Route53 to write logs
///     // to any log group under /aws/route53/*
///     var route53_query_logging_policy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             "route53.amazonaws.com",
///                         },
///                         Type = "Service",
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:logs:*:*:log-group:/aws/route53/*",
///                 },
///             },
///         },
///     });
///
///     var route53_query_logging_policyLogResourcePolicy = new Aws.CloudWatch.LogResourcePolicy("route53-query-logging-policy", new()
///     {
///         PolicyDocument = route53_query_logging_policy.Apply(route53_query_logging_policy => route53_query_logging_policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json)),
///         PolicyName = "route53-query-logging-policy",
///     });
///
///     var exampleComQueryLog = new Aws.Route53.QueryLog("example_com", new()
///     {
///         CloudwatchLogGroupArn = awsRoute53ExampleCom.Arn,
///         ZoneId = exampleCom.ZoneId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             route53_query_logging_policyLogResourcePolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Example Route53 zone with query logging
/// 		exampleCom, err := route53.NewZone(ctx, "example_com", &route53.ZoneArgs{
/// 			Name: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		awsRoute53ExampleCom, err := cloudwatch.NewLogGroup(ctx, "aws_route53_example_com", &cloudwatch.LogGroupArgs{
/// 			Name: exampleCom.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("/aws/route53/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			RetentionInDays: pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example CloudWatch log resource policy to allow Route53 to write logs
/// 		// to any log group under /aws/route53/*
/// 		route53_query_logging_policy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Identifiers: []string{
/// 								"route53.amazonaws.com",
/// 							},
/// 							Type: "Service",
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"logs:CreateLogStream",
/// 						"logs:PutLogEvents",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:logs:*:*:log-group:/aws/route53/*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		route53_query_logging_policyLogResourcePolicy, err := cloudwatch.NewLogResourcePolicy(ctx, "route53-query-logging-policy", &cloudwatch.LogResourcePolicyArgs{
/// 			PolicyDocument: pulumi.String(route53_query_logging_policy.Json),
/// 			PolicyName:     pulumi.String("route53-query-logging-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewQueryLog(ctx, "example_com", &route53.QueryLogArgs{
/// 			CloudwatchLogGroupArn: awsRoute53ExampleCom.Arn,
/// 			ZoneId:                exampleCom.ZoneId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			route53_query_logging_policyLogResourcePolicy,
/// 		}))
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
/// data "aws_iam_getpolicydocument" "route53-query-logging-policy" {
///   statements {
///     principals {
///       identifiers = ["route53.amazonaws.com"]
///       type        = "Service"
///     }
///     actions   = ["logs:CreateLogStream", "logs:PutLogEvents"]
///     resources = ["arn:aws:logs:*:*:log-group:/aws/route53/*"]
///   }
/// }
///
/// resource "aws_cloudwatch_loggroup" "aws_route53_example_com" {
///   name              ="/aws/route53/${aws_route53_zone.example_com.name}"
///   retention_in_days = 30
/// }
/// resource "aws_cloudwatch_logresourcepolicy" "route53-query-logging-policy" {
///   policy_document = data.aws_iam_getpolicydocument.route53-query-logging-policy.json
///   policy_name     = "route53-query-logging-policy"
/// }
/// # Example Route53 zone with query logging
/// resource "aws_route53_zone" "example_com" {
///   name = "example.com"
/// }
/// resource "aws_route53_querylog" "example_com" {
///   depends_on               = [aws_cloudwatch_logresourcepolicy.route53-query-logging-policy]
///   cloudwatch_log_group_arn = aws_cloudwatch_loggroup.aws_route53_example_com.arn
///   zone_id                  = aws_route53_zone.example_com.zone_id
/// }
/// # Example CloudWatch log resource policy to allow Route53 to write logs
/// # to any log group under /aws/route53/*
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
/// import com.pulumi.aws.route53.QueryLog;
/// import com.pulumi.aws.route53.QueryLogArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         // Example Route53 zone with query logging
///         var exampleCom = new Zone("exampleCom", ZoneArgs.builder()
///             .name("example.com")
///             .build());
///
///         var awsRoute53ExampleCom = new LogGroup("awsRoute53ExampleCom", LogGroupArgs.builder()
///             .name(exampleCom.name().applyValue(_name -> String.format("/aws/route53/%s", _name)))
///             .retentionInDays(30)
///             .build());
///
///         // Example CloudWatch log resource policy to allow Route53 to write logs
///         // to any log group under /aws/route53/*
///         final var route53-query-logging-policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers("route53.amazonaws.com")
///                     .type("Service")
///                     .build())
///                 .actions(
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents")
///                 .resources("arn:aws:logs:*:*:log-group:/aws/route53/*")
///                 .build())
///             .build());
///
///         var route53_query_logging_policyLogResourcePolicy = new LogResourcePolicy("route53-query-logging-policyLogResourcePolicy", LogResourcePolicyArgs.builder()
///             .policyDocument(route53_query_logging_policy.json())
///             .policyName("route53-query-logging-policy")
///             .build());
///
///         var exampleComQueryLog = new QueryLog("exampleComQueryLog", QueryLogArgs.builder()
///             .cloudwatchLogGroupArn(awsRoute53ExampleCom.arn())
///             .zoneId(exampleCom.zoneId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(route53_query_logging_policyLogResourcePolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   awsRoute53ExampleCom:
///     type: aws:cloudwatch:LogGroup
///     name: aws_route53_example_com
///     properties:
///       name: /aws/route53/${exampleCom.name}
///       retentionInDays: 30
///   route53-query-logging-policyLogResourcePolicy:
///     type: aws:cloudwatch:LogResourcePolicy
///     name: route53-query-logging-policy
///     properties:
///       policyDocument: ${["route53-query-logging-policy"].json}
///       policyName: route53-query-logging-policy
///   # Example Route53 zone with query logging
///   exampleCom:
///     type: aws:route53:Zone
///     name: example_com
///     properties:
///       name: example.com
///   exampleComQueryLog:
///     type: aws:route53:QueryLog
///     name: example_com
///     properties:
///       cloudwatchLogGroupArn: ${awsRoute53ExampleCom.arn}
///       zoneId: ${exampleCom.zoneId}
///     options:
///       dependsOn:
///         - ${["route53-query-logging-policyLogResourcePolicy"]}
/// variables:
///   # Example CloudWatch log resource policy to allow Route53 to write logs
///   # to any log group under /aws/route53/*
///   route53-query-logging-policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - identifiers:
///                   - route53.amazonaws.com
///                 type: Service
///             actions:
///               - logs:CreateLogStream
///               - logs:PutLogEvents
///             resources:
///               - arn:aws:logs:*:*:log-group:/aws/route53/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 query logging configurations using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/queryLog:QueryLog example_com xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
/// ```
class QueryLog extends pulumi.CustomResource {
  /// ARN of the Query Logging Config.
  late final pulumi.Output<String> arn;
  /// CloudWatch log group ARN to send query logs.
  late final pulumi.Output<String> cloudwatchLogGroupArn;
  /// Route53 hosted zone ID to enable query logs.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [QueryLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueryLog]. {@macro pulumi_route53_query_log_query_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueryLog(
    String name, {
    QueryLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/queryLog:QueryLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cloudwatchLogGroupArn = registerOutput<String>('cloudwatchLogGroupArn');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [QueryLog] resource's state with the given [name] and [id].
  static QueryLog get(
    String name,
    pulumi.Input<String> id, {
    QueryLogState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return QueryLog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  QueryLog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/queryLog:QueryLog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cloudwatchLogGroupArn = registerOutput<String>('cloudwatchLogGroupArn');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [QueryLog] resource.
  QueryLog.reference(String urn)
    : super(
        'aws:route53/queryLog:QueryLog',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cloudwatchLogGroupArn = registerOutput<String>('cloudwatchLogGroupArn');
    zoneId = registerOutput<String>('zoneId');
  }
}
