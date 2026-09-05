import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_resource_policy_args.dart';
import 'log_resource_policy_state.dart';

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
///         principals: [{
///             identifiers: ["es.amazonaws.com"],
///             type: "Service",
///         }],
///         actions: [
///             "logs:CreateLogStream",
///             "logs:PutLogEvents",
///             "logs:PutLogEventsBatch",
///         ],
///         resources: ["arn:aws:logs:*"],
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
///     "principals": [{
///         "identifiers": ["es.amazonaws.com"],
///         "type": "Service",
///     }],
///     "actions": [
///         "logs:CreateLogStream",
///         "logs:PutLogEvents",
///         "logs:PutLogEventsBatch",
///     ],
///     "resources": ["arn:aws:logs:*"],
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
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Identifiers: []string{
/// 								"es.amazonaws.com",
/// 							},
/// 							Type: "Service",
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"logs:CreateLogStream",
/// 						"logs:PutLogEvents",
/// 						"logs:PutLogEventsBatch",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:logs:*",
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "elasticsearch-log-publishing-policy" {
///   statements {
///     principals {
///       identifiers = ["es.amazonaws.com"]
///       type        = "Service"
///     }
///     actions   = ["logs:CreateLogStream", "logs:PutLogEvents", "logs:PutLogEventsBatch"]
///     resources = ["arn:aws:logs:*"]
///   }
/// }
///
/// resource "aws_cloudwatch_logresourcepolicy" "elasticsearch-log-publishing-policy" {
///   policy_document = data.aws_iam_getpolicydocument.elasticsearch-log-publishing-policy.json
///   policy_name     = "elasticsearch-log-publishing-policy"
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
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
///         final var elasticsearch-log-publishing-policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers("es.amazonaws.com")
///                     .type("Service")
///                     .build())
///                 .actions(
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                     "logs:PutLogEventsBatch")
///                 .resources("arn:aws:logs:*")
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
///           - principals:
///               - identifiers:
///                   - es.amazonaws.com
///                 type: Service
///             actions:
///               - logs:CreateLogStream
///               - logs:PutLogEvents
///               - logs:PutLogEventsBatch
///             resources:
///               - arn:aws:logs:*
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
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
/// resource "aws_cloudwatch_logresourcepolicy" "route53-query-logging-policy" {
///   policy_document = data.aws_iam_getpolicydocument.route53-query-logging-policy.json
///   policy_name     = "route53-query-logging-policy"
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
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
/// ### Identity Schema
///
/// Exactly one of `policyName` or `resourceArn` must be configured.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `policyName` (String) Name of the resource policy.
/// * `region` (String) Region where this resource is managed.
/// * `resourceArn` (String) ARN of the resource to which the policy is attached.
///
///
///
/// Using `pulumi import`, import Resource Policies using `policyName` for account-scoped policies, or `resourceArn` for resource-scoped policies. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logResourcePolicy:LogResourcePolicy my_policy_account_scoped my_policy
/// ```
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logResourcePolicy:LogResourcePolicy my_policy_resource_scoped "arn:aws:logs:us-west-2:123456789012:log-group:/my-log-group"
/// ```
class LogResourcePolicy extends pulumi.CustomResource {
  /// Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  late final pulumi.Output<String> policyDocument;
  /// Name of the resource policy. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for account-scoped policies. Note that the number of resource policies without `resourceArn` is limited to 10 per region.
  late final pulumi.Output<String?> policyName;
  /// Scope of the resource policy (`ACCOUNT` or `RESOURCE`).
  late final pulumi.Output<String> policyScope;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the CloudWatch Logs resource to which the resource policy is attached. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for resource-scoped policies. Only one policy can be attached per log group resource ARN.
  late final pulumi.Output<String?> resourceArn;
  /// Revision ID of the resource policy. Only populated for resource-scoped policies.
  late final pulumi.Output<String> revisionId;

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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policyDocument = registerOutput<String>('policyDocument');
    policyName = registerOutput<String?>('policyName');
    policyScope = registerOutput<String>('policyScope');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String?>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }

  /// Gets an existing [LogResourcePolicy] resource's state with the given [name] and [id].
  static LogResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    LogResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logResourcePolicy:LogResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyDocument = registerOutput<String>('policyDocument');
    policyName = registerOutput<String?>('policyName');
    policyScope = registerOutput<String>('policyScope');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String?>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }

  /// Creates a typed reference to an existing [LogResourcePolicy] resource.
  LogResourcePolicy.reference(String urn)
    : super(
        'aws:cloudwatch/logResourcePolicy:LogResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policyDocument = registerOutput<String>('policyDocument');
    policyName = registerOutput<String?>('policyName');
    policyScope = registerOutput<String>('policyScope');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String?>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }
}
