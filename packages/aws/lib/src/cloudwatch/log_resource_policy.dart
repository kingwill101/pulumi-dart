import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_resource_policy_args.dart';

/// Provides a resource to manage a CloudWatch log resource policy.
///
/// ## Example Usage
///
/// ### Elasticsearch Log Publishing
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const elasticsearch_log_publishing_policy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: [
///             "logs:CreateLogStream",
///             "logs:PutLogEvents",
///             "logs:PutLogEventsBatch",
///         ],
///         resources: ["arn:aws:logs:*"],
///         principals: [{
///             identifiers: ["es.amazonaws.com"],
///             type: "Service",
///         }],
///     }],
/// });
/// const elasticsearch_log_publishing_policyLogResourcePolicy = new aws.cloudwatch.LogResourcePolicy("elasticsearch-log-publishing-policy", {
///     policyDocument: elasticsearch_log_publishing_policy.then(elasticsearch_log_publishing_policy => elasticsearch_log_publishing_policy.json),
///     policyName: "elasticsearch-log-publishing-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// elasticsearch_log_publishing_policy = aws.iam.get_policy_document(statements=[{
///     "actions": [
///         "logs:CreateLogStream",
///         "logs:PutLogEvents",
///         "logs:PutLogEventsBatch",
///     ],
///     "resources": ["arn:aws:logs:*"],
///     "principals": [{
///         "identifiers": ["es.amazonaws.com"],
///         "type": "Service",
///     }],
/// }])
/// elasticsearch_log_publishing_policy_log_resource_policy = aws.cloudwatch.LogResourcePolicy("elasticsearch-log-publishing-policy",
///     policy_document=elasticsearch_log_publishing_policy.json,
///     policy_name="elasticsearch-log-publishing-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticsearch_log_publishing_policy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                     "logs:PutLogEventsBatch",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:logs:*",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             "es.amazonaws.com",
///                         },
///                         Type = "Service",
///                     },
///                 },
///             },
///         },
///     });
///
///     var elasticsearch_log_publishing_policyLogResourcePolicy = new Aws.CloudWatch.LogResourcePolicy("elasticsearch-log-publishing-policy", new()
///     {
///         PolicyDocument = elasticsearch_log_publishing_policy.Apply(elasticsearch_log_publishing_policy => elasticsearch_log_publishing_policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json)),
///         PolicyName = "elasticsearch-log-publishing-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		elasticsearch_log_publishing_policy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"logs:CreateLogStream",
/// 						"logs:PutLogEvents",
/// 						"logs:PutLogEventsBatch",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:logs:*",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Identifiers: []string{
/// 								"es.amazonaws.com",
/// 							},
/// 							Type: "Service",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogResourcePolicy(ctx, "elasticsearch-log-publishing-policy", &cloudwatch.LogResourcePolicyArgs{
/// 			PolicyDocument: pulumi.String(elasticsearch_log_publishing_policy.Json),
/// 			PolicyName:     pulumi.String("elasticsearch-log-publishing-policy"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
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
///         final var elasticsearch-log-publishing-policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions(
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                     "logs:PutLogEventsBatch")
///                 .resources("arn:aws:logs:*")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers("es.amazonaws.com")
///                     .type("Service")
///                     .build())
///                 .build())
///             .build());
///
///         var elasticsearch_log_publishing_policyLogResourcePolicy = new LogResourcePolicy("elasticsearch-log-publishing-policyLogResourcePolicy", LogResourcePolicyArgs.builder()
///             .policyDocument(elasticsearch_log_publishing_policy.json())
///             .policyName("elasticsearch-log-publishing-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   elasticsearch-log-publishing-policyLogResourcePolicy:
///     type: aws:cloudwatch:LogResourcePolicy
///     name: elasticsearch-log-publishing-policy
///     properties:
///       policyDocument: ${["elasticsearch-log-publishing-policy"].json}
///       policyName: elasticsearch-log-publishing-policy
/// variables:
///   elasticsearch-log-publishing-policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - logs:CreateLogStream
///               - logs:PutLogEvents
///               - logs:PutLogEventsBatch
///             resources:
///               - arn:aws:logs:*
///             principals:
///               - identifiers:
///                   - es.amazonaws.com
///                 type: Service
/// ```
///
///
/// ### Route53 Query Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const route53_query_logging_policy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: [
///             "logs:CreateLogStream",
///             "logs:PutLogEvents",
///         ],
///         resources: ["arn:aws:logs:*:*:log-group:/aws/route53/*"],
///         principals: [{
///             identifiers: ["route53.amazonaws.com"],
///             type: "Service",
///         }],
///     }],
/// });
/// const route53_query_logging_policyLogResourcePolicy = new aws.cloudwatch.LogResourcePolicy("route53-query-logging-policy", {
///     policyDocument: route53_query_logging_policy.then(route53_query_logging_policy => route53_query_logging_policy.json),
///     policyName: "route53-query-logging-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// route53_query_logging_policy = aws.iam.get_policy_document(statements=[{
///     "actions": [
///         "logs:CreateLogStream",
///         "logs:PutLogEvents",
///     ],
///     "resources": ["arn:aws:logs:*:*:log-group:/aws/route53/*"],
///     "principals": [{
///         "identifiers": ["route53.amazonaws.com"],
///         "type": "Service",
///     }],
/// }])
/// route53_query_logging_policy_log_resource_policy = aws.cloudwatch.LogResourcePolicy("route53-query-logging-policy",
///     policy_document=route53_query_logging_policy.json,
///     policy_name="route53-query-logging-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var route53_query_logging_policy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:logs:*:*:log-group:/aws/route53/*",
///                 },
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		route53_query_logging_policy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"logs:CreateLogStream",
/// 						"logs:PutLogEvents",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:logs:*:*:log-group:/aws/route53/*",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Identifiers: []string{
/// 								"route53.amazonaws.com",
/// 							},
/// 							Type: "Service",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogResourcePolicy(ctx, "route53-query-logging-policy", &cloudwatch.LogResourcePolicyArgs{
/// 			PolicyDocument: pulumi.String(route53_query_logging_policy.Json),
/// 			PolicyName:     pulumi.String("route53-query-logging-policy"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
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
///         final var route53-query-logging-policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions(
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents")
///                 .resources("arn:aws:logs:*:*:log-group:/aws/route53/*")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers("route53.amazonaws.com")
///                     .type("Service")
///                     .build())
///                 .build())
///             .build());
///
///         var route53_query_logging_policyLogResourcePolicy = new LogResourcePolicy("route53-query-logging-policyLogResourcePolicy", LogResourcePolicyArgs.builder()
///             .policyDocument(route53_query_logging_policy.json())
///             .policyName("route53-query-logging-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   route53-query-logging-policyLogResourcePolicy:
///     type: aws:cloudwatch:LogResourcePolicy
///     name: route53-query-logging-policy
///     properties:
///       policyDocument: ${["route53-query-logging-policy"].json}
///       policyName: route53-query-logging-policy
/// variables:
///   route53-query-logging-policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - logs:CreateLogStream
///               - logs:PutLogEvents
///             resources:
///               - arn:aws:logs:*:*:log-group:/aws/route53/*
///             principals:
///               - identifiers:
///                   - route53.amazonaws.com
///                 type: Service
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch log resource policies using the policy name. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logResourcePolicy:LogResourcePolicy MyPolicy MyPolicy
/// ```
class LogResourcePolicy extends pulumi.CustomResource {
  /// Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  late final pulumi.Output<String> policyDocument;

  /// Name of the resource policy.
  late final pulumi.Output<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LogResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogResourcePolicy]. {@macro pulumi_cloudwatch_log_resource_policy_log_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogResourcePolicy(
    String name, {
    LogResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logResourcePolicy:LogResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.region = registerOutput<String>('region');
  }
}
