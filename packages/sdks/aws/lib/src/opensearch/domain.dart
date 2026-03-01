import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_advanced_security_options.dart';
import 'domain_aiml_options.dart';
import 'domain_args.dart';
import 'domain_auto_tune_options.dart';
import 'domain_cluster_config.dart';
import 'domain_cognito_options.dart';
import 'domain_domain_endpoint_options.dart';
import 'domain_ebs_options.dart';
import 'domain_encrypt_at_rest.dart';
import 'domain_identity_center_options.dart';
import 'domain_log_publishing_option.dart';
import 'domain_node_to_node_encryption.dart';
import 'domain_off_peak_window_options.dart';
import 'domain_snapshot_options.dart';
import 'domain_software_update_options.dart';
import 'domain_state.dart';
import 'domain_vpc_options.dart';

/// Manages an Amazon OpenSearch Domain.
///
/// ## Elasticsearch vs. OpenSearch
///
/// Amazon OpenSearch Service is the successor to Amazon Elasticsearch Service and supports OpenSearch and legacy Elasticsearch OSS (up to 7.10, the final open source version of the software).
///
/// OpenSearch Domain configurations are similar in many ways to Elasticsearch Domain configurations. However, there are important differences including these:
///
/// * OpenSearch has `engine_version` while Elasticsearch has `elasticsearch_version`
/// * Versions are specified differently - _e.g._, `Elasticsearch_7.10` with OpenSearch vs. `7.10` for Elasticsearch.
/// * `instance_type` argument values end in `search` for OpenSearch vs. `elasticsearch` for Elasticsearch (_e.g._, `t2.micro.search` vs. `t2.micro.elasticsearch`).
/// * The AWS-managed service-linked role for OpenSearch is called `AWSServiceRoleForAmazonOpenSearchService` instead of `AWSServiceRoleForAmazonElasticsearchService` for Elasticsearch.
///
/// There are also some potentially unexpected similarities in configurations:
///
/// * ARNs for both are prefaced with `arn:aws:es:`.
/// * Both OpenSearch and Elasticsearch use assume role policies that refer to the `Principal` `Service` as `es.amazonaws.com`.
/// * IAM policy actions, such as those you will find in `access_policies`, are prefaced with `es:` for both.
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
/// const example = new aws.opensearch.Domain("example", {
///     domainName: "example",
///     engineVersion: "Elasticsearch_7.10",
///     clusterConfig: {
///         instanceType: "r4.large.search",
///     },
///     tags: {
///         Domain: "TestDomain",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.Domain("example",
///     domain_name="example",
///     engine_version="Elasticsearch_7.10",
///     cluster_config={
///         "instance_type": "r4.large.search",
///     },
///     tags={
///         "Domain": "TestDomain",
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
///     var example = new Aws.OpenSearch.Domain("example", new()
///     {
///         DomainName = "example",
///         EngineVersion = "Elasticsearch_7.10",
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "r4.large.search",
///         },
///         Tags =
///         {
///             { "Domain", "TestDomain" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			DomainName:    pulumi.String("example"),
/// 			EngineVersion: pulumi.String("Elasticsearch_7.10"),
/// 			ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// 				InstanceType: pulumi.String("r4.large.search"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Domain": pulumi.String("TestDomain"),
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
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainClusterConfigArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("example")
///             .engineVersion("Elasticsearch_7.10")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("r4.large.search")
///                 .build())
///             .tags(Map.of("Domain", "TestDomain"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:Domain
///     properties:
///       domainName: example
///       engineVersion: Elasticsearch_7.10
///       clusterConfig:
///         instanceType: r4.large.search
///       tags:
///         Domain: TestDomain
/// ```
///
///
/// ### Access Policy
///
/// > See also: `aws.opensearch.DomainPolicy` resource
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const domain = config.get("domain") || "tf-test";
/// const current = aws.getRegion({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const example = Promise.all([current, currentGetCallerIdentity]).then(([current, currentGetCallerIdentity]) => aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: ["es:*"],
///         resources: [`arn:aws:es:${current.region}:${currentGetCallerIdentity.accountId}:domain/${domain}/*`],
///         conditions: [{
///             test: "IpAddress",
///             variable: "aws:SourceIp",
///             values: ["66.193.100.22/32"],
///         }],
///     }],
/// }));
/// const exampleDomain = new aws.opensearch.Domain("example", {
///     domainName: domain,
///     accessPolicies: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// domain = config.get("domain")
/// if domain is None:
///     domain = "tf-test"
/// current = aws.get_region()
/// current_get_caller_identity = aws.get_caller_identity()
/// example = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": ["es:*"],
///     "resources": [f"arn:aws:es:{current.region}:{current_get_caller_identity.account_id}:domain/{domain}/*"],
///     "conditions": [{
///         "test": "IpAddress",
///         "variable": "aws:SourceIp",
///         "values": ["66.193.100.22/32"],
///     }],
/// }])
/// example_domain = aws.opensearch.Domain("example",
///     domain_name=domain,
///     access_policies=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var domain = config.Get("domain") ?? "tf-test";
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "*",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "es:*",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:aws:es:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:domain/{domain}/*",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "IpAddress",
///                         Variable = "aws:SourceIp",
///                         Values = new[]
///                         {
///                             "66.193.100.22/32",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleDomain = new Aws.OpenSearch.Domain("example", new()
///     {
///         DomainName = domain,
///         AccessPolicies = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		domain := "tf-test"
/// 		if param := cfg.Get("domain"); param != "" {
/// 			domain = param
/// 		}
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "*",
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"es:*",
/// 					},
/// 					Resources: []string{
/// 						fmt.Sprintf("arn:aws:es:%v:%v:domain/%v/*", current.Region, currentGetCallerIdentity.AccountId, domain),
/// 					},
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "IpAddress",
/// 							Variable: "aws:SourceIp",
/// 							Values: []string{
/// 								"66.193.100.22/32",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			DomainName:     pulumi.String(domain),
/// 			AccessPolicies: pulumi.String(example.Json),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
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
///         final var config = ctx.config();
///         final var domain = config.get("domain").orElse("tf-test");
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions("es:*")
///                 .resources(String.format("arn:aws:es:%s:%s:domain/%s/*", current.region(),currentGetCallerIdentity.accountId(),domain))
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("IpAddress")
///                     .variable("aws:SourceIp")
///                     .values("66.193.100.22/32")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .domainName(domain)
///             .accessPolicies(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   domain:
///     type: string
///     default: tf-test
/// resources:
///   exampleDomain:
///     type: aws:opensearch:Domain
///     name: example
///     properties:
///       domainName: ${domain}
///       accessPolicies: ${example.json}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             actions:
///               - es:*
///             resources:
///               - arn:aws:es:${current.region}:${currentGetCallerIdentity.accountId}:domain/${domain}/*
///             conditions:
///               - test: IpAddress
///                 variable: aws:SourceIp
///                 values:
///                   - 66.193.100.22/32
/// ```
///
///
/// ### Log publishing to CloudWatch Logs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["es.amazonaws.com"],
///         }],
///         actions: [
///             "logs:PutLogEvents",
///             "logs:PutLogEventsBatch",
///             "logs:CreateLogStream",
///         ],
///         resources: ["arn:aws:logs:*"],
///     }],
/// });
/// const exampleLogResourcePolicy = new aws.cloudwatch.LogResourcePolicy("example", {
///     policyName: "example",
///     policyDocument: example.then(example => example.json),
/// });
/// const exampleDomain = new aws.opensearch.Domain("example", {logPublishingOptions: [{
///     cloudwatchLogGroupArn: exampleLogGroup.arn,
///     logType: "INDEX_SLOW_LOGS",
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// example = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["es.amazonaws.com"],
///     }],
///     "actions": [
///         "logs:PutLogEvents",
///         "logs:PutLogEventsBatch",
///         "logs:CreateLogStream",
///     ],
///     "resources": ["arn:aws:logs:*"],
/// }])
/// example_log_resource_policy = aws.cloudwatch.LogResourcePolicy("example",
///     policy_name="example",
///     policy_document=example.json)
/// example_domain = aws.opensearch.Domain("example", log_publishing_options=[{
///     "cloudwatch_log_group_arn": example_log_group.arn,
///     "log_type": "INDEX_SLOW_LOGS",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "es.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "logs:PutLogEvents",
///                     "logs:PutLogEventsBatch",
///                     "logs:CreateLogStream",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:logs:*",
///                 },
///             },
///         },
///     });
///
///     var exampleLogResourcePolicy = new Aws.CloudWatch.LogResourcePolicy("example", new()
///     {
///         PolicyName = "example",
///         PolicyDocument = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleDomain = new Aws.OpenSearch.Domain("example", new()
///     {
///         LogPublishingOptions = new[]
///         {
///             new Aws.OpenSearch.Inputs.DomainLogPublishingOptionArgs
///             {
///                 CloudwatchLogGroupArn = exampleLogGroup.Arn,
///                 LogType = "INDEX_SLOW_LOGS",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"es.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"logs:PutLogEvents",
/// 						"logs:PutLogEventsBatch",
/// 						"logs:CreateLogStream",
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
/// 		_, err = cloudwatch.NewLogResourcePolicy(ctx, "example", &cloudwatch.LogResourcePolicyArgs{
/// 			PolicyName:     pulumi.String("example"),
/// 			PolicyDocument: pulumi.String(example.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			LogPublishingOptions: opensearch.DomainLogPublishingOptionArray{
/// 				&opensearch.DomainLogPublishingOptionArgs{
/// 					CloudwatchLogGroupArn: exampleLogGroup.Arn,
/// 					LogType:               pulumi.String("INDEX_SLOW_LOGS"),
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainLogPublishingOptionArgs;
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
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("example")
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("es.amazonaws.com")
///                     .build())
///                 .actions(
///                     "logs:PutLogEvents",
///                     "logs:PutLogEventsBatch",
///                     "logs:CreateLogStream")
///                 .resources("arn:aws:logs:*")
///                 .build())
///             .build());
///
///         var exampleLogResourcePolicy = new LogResourcePolicy("exampleLogResourcePolicy", LogResourcePolicyArgs.builder()
///             .policyName("example")
///             .policyDocument(example.json())
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .logPublishingOptions(DomainLogPublishingOptionArgs.builder()
///                 .cloudwatchLogGroupArn(exampleLogGroup.arn())
///                 .logType("INDEX_SLOW_LOGS")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: example
///   exampleLogResourcePolicy:
///     type: aws:cloudwatch:LogResourcePolicy
///     name: example
///     properties:
///       policyName: example
///       policyDocument: ${example.json}
///   exampleDomain:
///     type: aws:opensearch:Domain
///     name: example
///     properties:
///       logPublishingOptions:
///         - cloudwatchLogGroupArn: ${exampleLogGroup.arn}
///           logType: INDEX_SLOW_LOGS
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - es.amazonaws.com
///             actions:
///               - logs:PutLogEvents
///               - logs:PutLogEventsBatch
///               - logs:CreateLogStream
///             resources:
///               - arn:aws:logs:*
/// ```
///
///
/// ### VPC based OpenSearch
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const vpc = config.requireObject<any>("vpc");
/// const domain = config.get("domain") || "tf-test";
/// const example = aws.ec2.getVpc({
///     tags: {
///         Name: vpc,
///     },
/// });
/// const exampleGetSubnets = example.then(example => aws.ec2.getSubnets({
///     filters: [{
///         name: "vpc-id",
///         values: [example.id],
///     }],
///     tags: {
///         Tier: "private",
///     },
/// }));
/// const current = aws.getRegion({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const exampleSecurityGroup = new aws.ec2.SecurityGroup("example", {
///     name: `${vpc}-opensearch-${domain}`,
///     description: "Managed by Pulumi",
///     vpcId: example.then(example => example.id),
///     ingress: [{
///         fromPort: 443,
///         toPort: 443,
///         protocol: "tcp",
///         cidrBlocks: [example.then(example => example.cidrBlock)],
///     }],
/// });
/// const exampleServiceLinkedRole = new aws.iam.ServiceLinkedRole("example", {awsServiceName: "opensearchservice.amazonaws.com"});
/// const exampleGetPolicyDocument = Promise.all([current, currentGetCallerIdentity]).then(([current, currentGetCallerIdentity]) => aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: ["es:*"],
///         resources: [`arn:aws:es:${current.region}:${currentGetCallerIdentity.accountId}:domain/${domain}/*`],
///     }],
/// }));
/// const exampleDomain = new aws.opensearch.Domain("example", {
///     domainName: domain,
///     engineVersion: "OpenSearch_1.0",
///     clusterConfig: {
///         instanceType: "m4.large.search",
///         zoneAwarenessEnabled: true,
///     },
///     vpcOptions: {
///         subnetIds: [
///             exampleGetSubnets.then(exampleGetSubnets => exampleGetSubnets.ids?.[0]),
///             exampleGetSubnets.then(exampleGetSubnets => exampleGetSubnets.ids?.[1]),
///         ],
///         securityGroupIds: [exampleSecurityGroup.id],
///     },
///     advancedOptions: {
///         "rest.action.multi.allow_explicit_index": "true",
///     },
///     accessPolicies: exampleGetPolicyDocument.then(exampleGetPolicyDocument => exampleGetPolicyDocument.json),
///     tags: {
///         Domain: "TestDomain",
///     },
/// }, {
///     dependsOn: [exampleServiceLinkedRole],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// vpc = config.require_object("vpc")
/// domain = config.get("domain")
/// if domain is None:
///     domain = "tf-test"
/// example = aws.ec2.get_vpc(tags={
///     "Name": vpc,
/// })
/// example_get_subnets = aws.ec2.get_subnets(filters=[{
///         "name": "vpc-id",
///         "values": [example.id],
///     }],
///     tags={
///         "Tier": "private",
///     })
/// current = aws.get_region()
/// current_get_caller_identity = aws.get_caller_identity()
/// example_security_group = aws.ec2.SecurityGroup("example",
///     name=f"{vpc}-opensearch-{domain}",
///     description="Managed by Pulumi",
///     vpc_id=example.id,
///     ingress=[{
///         "from_port": 443,
///         "to_port": 443,
///         "protocol": "tcp",
///         "cidr_blocks": [example.cidr_block],
///     }])
/// example_service_linked_role = aws.iam.ServiceLinkedRole("example", aws_service_name="opensearchservice.amazonaws.com")
/// example_get_policy_document = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": ["es:*"],
///     "resources": [f"arn:aws:es:{current.region}:{current_get_caller_identity.account_id}:domain/{domain}/*"],
/// }])
/// example_domain = aws.opensearch.Domain("example",
///     domain_name=domain,
///     engine_version="OpenSearch_1.0",
///     cluster_config={
///         "instance_type": "m4.large.search",
///         "zone_awareness_enabled": True,
///     },
///     vpc_options={
///         "subnet_ids": [
///             example_get_subnets.ids[0],
///             example_get_subnets.ids[1],
///         ],
///         "security_group_ids": [example_security_group.id],
///     },
///     advanced_options={
///         "rest.action.multi.allow_explicit_index": "true",
///     },
///     access_policies=example_get_policy_document.json,
///     tags={
///         "Domain": "TestDomain",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_service_linked_role]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var vpc = config.RequireObject<dynamic>("vpc");
///     var domain = config.Get("domain") ?? "tf-test";
///     var example = Aws.Ec2.GetVpc.Invoke(new()
///     {
///         Tags =
///         {
///             { "Name", vpc },
///         },
///     });
///
///     var exampleGetSubnets = Aws.Ec2.GetSubnets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetSubnetsFilterInputArgs
///             {
///                 Name = "vpc-id",
///                 Values = new[]
///                 {
///                     example.Apply(getVpcResult => getVpcResult.Id),
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Tier", "private" },
///         },
///     });
///
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
///     var exampleSecurityGroup = new Aws.Ec2.SecurityGroup("example", new()
///     {
///         Name = $"{vpc}-opensearch-{domain}",
///         Description = "Managed by Pulumi",
///         VpcId = example.Apply(getVpcResult => getVpcResult.Id),
///         Ingress = new[]
///         {
///             new Aws.Ec2.Inputs.SecurityGroupIngressArgs
///             {
///                 FromPort = 443,
///                 ToPort = 443,
///                 Protocol = "tcp",
///                 CidrBlocks = new[]
///                 {
///                     example.Apply(getVpcResult => getVpcResult.CidrBlock),
///                 },
///             },
///         },
///     });
///
///     var exampleServiceLinkedRole = new Aws.Iam.ServiceLinkedRole("example", new()
///     {
///         AwsServiceName = "opensearchservice.amazonaws.com",
///     });
///
///     var exampleGetPolicyDocument = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "*",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "es:*",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:aws:es:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:domain/{domain}/*",
///                 },
///             },
///         },
///     });
///
///     var exampleDomain = new Aws.OpenSearch.Domain("example", new()
///     {
///         DomainName = domain,
///         EngineVersion = "OpenSearch_1.0",
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "m4.large.search",
///             ZoneAwarenessEnabled = true,
///         },
///         VpcOptions = new Aws.OpenSearch.Inputs.DomainVpcOptionsArgs
///         {
///             SubnetIds = new[]
///             {
///                 exampleGetSubnets.Apply(getSubnetsResult => getSubnetsResult.Ids[0]),
///                 exampleGetSubnets.Apply(getSubnetsResult => getSubnetsResult.Ids[1]),
///             },
///             SecurityGroupIds = new[]
///             {
///                 exampleSecurityGroup.Id,
///             },
///         },
///         AdvancedOptions =
///         {
///             { "rest.action.multi.allow_explicit_index", "true" },
///         },
///         AccessPolicies = exampleGetPolicyDocument.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Tags =
///         {
///             { "Domain", "TestDomain" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleServiceLinkedRole,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// vpc := cfg.RequireObject("vpc")
/// domain := "tf-test";
/// if param := cfg.Get("domain"); param != ""{
/// domain = param
/// }
/// example, err := ec2.LookupVpc(ctx, &ec2.LookupVpcArgs{
/// Tags: pulumi.StringMap{
/// "Name": vpc,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleGetSubnets, err := ec2.GetSubnets(ctx, &ec2.GetSubnetsArgs{
/// Filters: []ec2.GetSubnetsFilter{
/// {
/// Name: "vpc-id",
/// Values: interface{}{
/// example.Id,
/// },
/// },
/// },
/// Tags: map[string]interface{}{
/// "Tier": "private",
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleSecurityGroup, err := ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// Name: pulumi.Sprintf("%v-opensearch-%v", vpc, domain),
/// Description: pulumi.String("Managed by Pulumi"),
/// VpcId: pulumi.String(example.Id),
/// Ingress: ec2.SecurityGroupIngressArray{
/// &ec2.SecurityGroupIngressArgs{
/// FromPort: pulumi.Int(443),
/// ToPort: pulumi.Int(443),
/// Protocol: pulumi.String("tcp"),
/// CidrBlocks: pulumi.StringArray{
/// pulumi.String(example.CidrBlock),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleServiceLinkedRole, err := iam.NewServiceLinkedRole(ctx, "example", &iam.ServiceLinkedRoleArgs{
/// AwsServiceName: pulumi.String("opensearchservice.amazonaws.com"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleGetPolicyDocument, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "*",
/// Identifiers: []string{
/// "*",
/// },
/// },
/// },
/// Actions: []string{
/// "es:*",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:aws:es:%v:%v:domain/%v/*", current.Region, currentGetCallerIdentity.AccountId, domain),
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// DomainName: pulumi.String(domain),
/// EngineVersion: pulumi.String("OpenSearch_1.0"),
/// ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// InstanceType: pulumi.String("m4.large.search"),
/// ZoneAwarenessEnabled: pulumi.Bool(true),
/// },
/// VpcOptions: &opensearch.DomainVpcOptionsArgs{
/// SubnetIds: pulumi.StringArray{
/// pulumi.String(exampleGetSubnets.Ids[0]),
/// pulumi.String(exampleGetSubnets.Ids[1]),
/// },
/// SecurityGroupIds: pulumi.StringArray{
/// exampleSecurityGroup.ID(),
/// },
/// },
/// AdvancedOptions: pulumi.StringMap{
/// "rest.action.multi.allow_explicit_index": pulumi.String("true"),
/// },
/// AccessPolicies: pulumi.String(exampleGetPolicyDocument.Json),
/// Tags: pulumi.StringMap{
/// "Domain": pulumi.String("TestDomain"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleServiceLinkedRole,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcArgs;
/// import com.pulumi.aws.ec2.inputs.GetSubnetsArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.SecurityGroupIngressArgs;
/// import com.pulumi.aws.iam.ServiceLinkedRole;
/// import com.pulumi.aws.iam.ServiceLinkedRoleArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainClusterConfigArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainVpcOptionsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var config = ctx.config();
///         final var vpc = config.get("vpc");
///         final var domain = config.get("domain").orElse("tf-test");
///         final var example = Ec2Functions.getVpc(GetVpcArgs.builder()
///             .tags(Map.of("Name", vpc))
///             .build());
///
///         final var exampleGetSubnets = Ec2Functions.getSubnets(GetSubnetsArgs.builder()
///             .filters(GetSubnetsFilterArgs.builder()
///                 .name("vpc-id")
///                 .values(example.id())
///                 .build())
///             .tags(Map.of("Tier", "private"))
///             .build());
///
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name(String.format("%s-opensearch-%s", vpc,domain))
///             .description("Managed by Pulumi")
///             .vpcId(example.id())
///             .ingress(SecurityGroupIngressArgs.builder()
///                 .fromPort(443)
///                 .toPort(443)
///                 .protocol("tcp")
///                 .cidrBlocks(example.cidrBlock())
///                 .build())
///             .build());
///
///         var exampleServiceLinkedRole = new ServiceLinkedRole("exampleServiceLinkedRole", ServiceLinkedRoleArgs.builder()
///             .awsServiceName("opensearchservice.amazonaws.com")
///             .build());
///
///         final var exampleGetPolicyDocument = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions("es:*")
///                 .resources(String.format("arn:aws:es:%s:%s:domain/%s/*", current.region(),currentGetCallerIdentity.accountId(),domain))
///                 .build())
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .domainName(domain)
///             .engineVersion("OpenSearch_1.0")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("m4.large.search")
///                 .zoneAwarenessEnabled(true)
///                 .build())
///             .vpcOptions(DomainVpcOptionsArgs.builder()
///                 .subnetIds(
///                     exampleGetSubnets.ids()[0],
///                     exampleGetSubnets.ids()[1])
///                 .securityGroupIds(exampleSecurityGroup.id())
///                 .build())
///             .advancedOptions(Map.of("rest.action.multi.allow_explicit_index", "true"))
///             .accessPolicies(exampleGetPolicyDocument.json())
///             .tags(Map.of("Domain", "TestDomain"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleServiceLinkedRole)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   vpc:
///     type: dynamic
///   domain:
///     type: string
///     default: tf-test
/// resources:
///   exampleSecurityGroup:
///     type: aws:ec2:SecurityGroup
///     name: example
///     properties:
///       name: ${vpc}-opensearch-${domain}
///       description: Managed by Pulumi
///       vpcId: ${example.id}
///       ingress:
///         - fromPort: 443
///           toPort: 443
///           protocol: tcp
///           cidrBlocks:
///             - ${example.cidrBlock}
///   exampleServiceLinkedRole:
///     type: aws:iam:ServiceLinkedRole
///     name: example
///     properties:
///       awsServiceName: opensearchservice.amazonaws.com
///   exampleDomain:
///     type: aws:opensearch:Domain
///     name: example
///     properties:
///       domainName: ${domain}
///       engineVersion: OpenSearch_1.0
///       clusterConfig:
///         instanceType: m4.large.search
///         zoneAwarenessEnabled: true
///       vpcOptions:
///         subnetIds:
///           - ${exampleGetSubnets.ids[0]}
///           - ${exampleGetSubnets.ids[1]}
///         securityGroupIds:
///           - ${exampleSecurityGroup.id}
///       advancedOptions:
///         rest.action.multi.allow_explicit_index: 'true'
///       accessPolicies: ${exampleGetPolicyDocument.json}
///       tags:
///         Domain: TestDomain
///     options:
///       dependsOn:
///         - ${exampleServiceLinkedRole}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpc
///       arguments:
///         tags:
///           Name: ${vpc}
///   exampleGetSubnets:
///     fn::invoke:
///       function: aws:ec2:getSubnets
///       arguments:
///         filters:
///           - name: vpc-id
///             values:
///               - ${example.id}
///         tags:
///           Tier: private
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   exampleGetPolicyDocument:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             actions:
///               - es:*
///             resources:
///               - arn:aws:es:${current.region}:${currentGetCallerIdentity.accountId}:domain/${domain}/*
/// ```
///
///
/// ### Enabling fine-grained access control on an existing domain
///
/// This example shows two configurations: one to create a domain without fine-grained access control and the second to modify the domain to enable fine-grained access control. For more information, see [Enabling fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html).
///
/// ### First apply
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.Domain("example", {
///     domainName: "ggkitty",
///     engineVersion: "Elasticsearch_7.1",
///     clusterConfig: {
///         instanceType: "r5.large.search",
///     },
///     advancedSecurityOptions: {
///         enabled: false,
///         anonymousAuthEnabled: true,
///         internalUserDatabaseEnabled: true,
///         masterUserOptions: {
///             masterUserName: "example",
///             masterUserPassword: "Barbarbarbar1!",
///         },
///     },
///     encryptAtRest: {
///         enabled: true,
///     },
///     domainEndpointOptions: {
///         enforceHttps: true,
///         tlsSecurityPolicy: "Policy-Min-TLS-1-2-2019-07",
///     },
///     nodeToNodeEncryption: {
///         enabled: true,
///     },
///     ebsOptions: {
///         ebsEnabled: true,
///         volumeSize: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.Domain("example",
///     domain_name="ggkitty",
///     engine_version="Elasticsearch_7.1",
///     cluster_config={
///         "instance_type": "r5.large.search",
///     },
///     advanced_security_options={
///         "enabled": False,
///         "anonymous_auth_enabled": True,
///         "internal_user_database_enabled": True,
///         "master_user_options": {
///             "master_user_name": "example",
///             "master_user_password": "Barbarbarbar1!",
///         },
///     },
///     encrypt_at_rest={
///         "enabled": True,
///     },
///     domain_endpoint_options={
///         "enforce_https": True,
///         "tls_security_policy": "Policy-Min-TLS-1-2-2019-07",
///     },
///     node_to_node_encryption={
///         "enabled": True,
///     },
///     ebs_options={
///         "ebs_enabled": True,
///         "volume_size": 10,
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
///     var example = new Aws.OpenSearch.Domain("example", new()
///     {
///         DomainName = "ggkitty",
///         EngineVersion = "Elasticsearch_7.1",
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "r5.large.search",
///         },
///         AdvancedSecurityOptions = new Aws.OpenSearch.Inputs.DomainAdvancedSecurityOptionsArgs
///         {
///             Enabled = false,
///             AnonymousAuthEnabled = true,
///             InternalUserDatabaseEnabled = true,
///             MasterUserOptions = new Aws.OpenSearch.Inputs.DomainAdvancedSecurityOptionsMasterUserOptionsArgs
///             {
///                 MasterUserName = "example",
///                 MasterUserPassword = "Barbarbarbar1!",
///             },
///         },
///         EncryptAtRest = new Aws.OpenSearch.Inputs.DomainEncryptAtRestArgs
///         {
///             Enabled = true,
///         },
///         DomainEndpointOptions = new Aws.OpenSearch.Inputs.DomainDomainEndpointOptionsArgs
///         {
///             EnforceHttps = true,
///             TlsSecurityPolicy = "Policy-Min-TLS-1-2-2019-07",
///         },
///         NodeToNodeEncryption = new Aws.OpenSearch.Inputs.DomainNodeToNodeEncryptionArgs
///         {
///             Enabled = true,
///         },
///         EbsOptions = new Aws.OpenSearch.Inputs.DomainEbsOptionsArgs
///         {
///             EbsEnabled = true,
///             VolumeSize = 10,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			DomainName:    pulumi.String("ggkitty"),
/// 			EngineVersion: pulumi.String("Elasticsearch_7.1"),
/// 			ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// 				InstanceType: pulumi.String("r5.large.search"),
/// 			},
/// 			AdvancedSecurityOptions: &opensearch.DomainAdvancedSecurityOptionsArgs{
/// 				Enabled:                     pulumi.Bool(false),
/// 				AnonymousAuthEnabled:        pulumi.Bool(true),
/// 				InternalUserDatabaseEnabled: pulumi.Bool(true),
/// 				MasterUserOptions: &opensearch.DomainAdvancedSecurityOptionsMasterUserOptionsArgs{
/// 					MasterUserName:     pulumi.String("example"),
/// 					MasterUserPassword: pulumi.String("Barbarbarbar1!"),
/// 				},
/// 			},
/// 			EncryptAtRest: &opensearch.DomainEncryptAtRestArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			DomainEndpointOptions: &opensearch.DomainDomainEndpointOptionsArgs{
/// 				EnforceHttps:      pulumi.Bool(true),
/// 				TlsSecurityPolicy: pulumi.String("Policy-Min-TLS-1-2-2019-07"),
/// 			},
/// 			NodeToNodeEncryption: &opensearch.DomainNodeToNodeEncryptionArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			EbsOptions: &opensearch.DomainEbsOptionsArgs{
/// 				EbsEnabled: pulumi.Bool(true),
/// 				VolumeSize: pulumi.Int(10),
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
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainClusterConfigArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainAdvancedSecurityOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainAdvancedSecurityOptionsMasterUserOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainEncryptAtRestArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainDomainEndpointOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainNodeToNodeEncryptionArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainEbsOptionsArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("ggkitty")
///             .engineVersion("Elasticsearch_7.1")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("r5.large.search")
///                 .build())
///             .advancedSecurityOptions(DomainAdvancedSecurityOptionsArgs.builder()
///                 .enabled(false)
///                 .anonymousAuthEnabled(true)
///                 .internalUserDatabaseEnabled(true)
///                 .masterUserOptions(DomainAdvancedSecurityOptionsMasterUserOptionsArgs.builder()
///                     .masterUserName("example")
///                     .masterUserPassword("Barbarbarbar1!")
///                     .build())
///                 .build())
///             .encryptAtRest(DomainEncryptAtRestArgs.builder()
///                 .enabled(true)
///                 .build())
///             .domainEndpointOptions(DomainDomainEndpointOptionsArgs.builder()
///                 .enforceHttps(true)
///                 .tlsSecurityPolicy("Policy-Min-TLS-1-2-2019-07")
///                 .build())
///             .nodeToNodeEncryption(DomainNodeToNodeEncryptionArgs.builder()
///                 .enabled(true)
///                 .build())
///             .ebsOptions(DomainEbsOptionsArgs.builder()
///                 .ebsEnabled(true)
///                 .volumeSize(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:Domain
///     properties:
///       domainName: ggkitty
///       engineVersion: Elasticsearch_7.1
///       clusterConfig:
///         instanceType: r5.large.search
///       advancedSecurityOptions:
///         enabled: false
///         anonymousAuthEnabled: true
///         internalUserDatabaseEnabled: true
///         masterUserOptions:
///           masterUserName: example
///           masterUserPassword: Barbarbarbar1!
///       encryptAtRest:
///         enabled: true
///       domainEndpointOptions:
///         enforceHttps: true
///         tlsSecurityPolicy: Policy-Min-TLS-1-2-2019-07
///       nodeToNodeEncryption:
///         enabled: true
///       ebsOptions:
///         ebsEnabled: true
///         volumeSize: 10
/// ```
///
///
/// ### Second apply
///
/// Notice that the only change is `advanced_security_options.0.enabled` is now set to `true`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.Domain("example", {
///     domainName: "ggkitty",
///     engineVersion: "Elasticsearch_7.1",
///     clusterConfig: {
///         instanceType: "r5.large.search",
///     },
///     advancedSecurityOptions: {
///         enabled: true,
///         anonymousAuthEnabled: true,
///         internalUserDatabaseEnabled: true,
///         masterUserOptions: {
///             masterUserName: "example",
///             masterUserPassword: "Barbarbarbar1!",
///         },
///     },
///     encryptAtRest: {
///         enabled: true,
///     },
///     domainEndpointOptions: {
///         enforceHttps: true,
///         tlsSecurityPolicy: "Policy-Min-TLS-1-2-2019-07",
///     },
///     nodeToNodeEncryption: {
///         enabled: true,
///     },
///     ebsOptions: {
///         ebsEnabled: true,
///         volumeSize: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.Domain("example",
///     domain_name="ggkitty",
///     engine_version="Elasticsearch_7.1",
///     cluster_config={
///         "instance_type": "r5.large.search",
///     },
///     advanced_security_options={
///         "enabled": True,
///         "anonymous_auth_enabled": True,
///         "internal_user_database_enabled": True,
///         "master_user_options": {
///             "master_user_name": "example",
///             "master_user_password": "Barbarbarbar1!",
///         },
///     },
///     encrypt_at_rest={
///         "enabled": True,
///     },
///     domain_endpoint_options={
///         "enforce_https": True,
///         "tls_security_policy": "Policy-Min-TLS-1-2-2019-07",
///     },
///     node_to_node_encryption={
///         "enabled": True,
///     },
///     ebs_options={
///         "ebs_enabled": True,
///         "volume_size": 10,
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
///     var example = new Aws.OpenSearch.Domain("example", new()
///     {
///         DomainName = "ggkitty",
///         EngineVersion = "Elasticsearch_7.1",
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "r5.large.search",
///         },
///         AdvancedSecurityOptions = new Aws.OpenSearch.Inputs.DomainAdvancedSecurityOptionsArgs
///         {
///             Enabled = true,
///             AnonymousAuthEnabled = true,
///             InternalUserDatabaseEnabled = true,
///             MasterUserOptions = new Aws.OpenSearch.Inputs.DomainAdvancedSecurityOptionsMasterUserOptionsArgs
///             {
///                 MasterUserName = "example",
///                 MasterUserPassword = "Barbarbarbar1!",
///             },
///         },
///         EncryptAtRest = new Aws.OpenSearch.Inputs.DomainEncryptAtRestArgs
///         {
///             Enabled = true,
///         },
///         DomainEndpointOptions = new Aws.OpenSearch.Inputs.DomainDomainEndpointOptionsArgs
///         {
///             EnforceHttps = true,
///             TlsSecurityPolicy = "Policy-Min-TLS-1-2-2019-07",
///         },
///         NodeToNodeEncryption = new Aws.OpenSearch.Inputs.DomainNodeToNodeEncryptionArgs
///         {
///             Enabled = true,
///         },
///         EbsOptions = new Aws.OpenSearch.Inputs.DomainEbsOptionsArgs
///         {
///             EbsEnabled = true,
///             VolumeSize = 10,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			DomainName:    pulumi.String("ggkitty"),
/// 			EngineVersion: pulumi.String("Elasticsearch_7.1"),
/// 			ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// 				InstanceType: pulumi.String("r5.large.search"),
/// 			},
/// 			AdvancedSecurityOptions: &opensearch.DomainAdvancedSecurityOptionsArgs{
/// 				Enabled:                     pulumi.Bool(true),
/// 				AnonymousAuthEnabled:        pulumi.Bool(true),
/// 				InternalUserDatabaseEnabled: pulumi.Bool(true),
/// 				MasterUserOptions: &opensearch.DomainAdvancedSecurityOptionsMasterUserOptionsArgs{
/// 					MasterUserName:     pulumi.String("example"),
/// 					MasterUserPassword: pulumi.String("Barbarbarbar1!"),
/// 				},
/// 			},
/// 			EncryptAtRest: &opensearch.DomainEncryptAtRestArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			DomainEndpointOptions: &opensearch.DomainDomainEndpointOptionsArgs{
/// 				EnforceHttps:      pulumi.Bool(true),
/// 				TlsSecurityPolicy: pulumi.String("Policy-Min-TLS-1-2-2019-07"),
/// 			},
/// 			NodeToNodeEncryption: &opensearch.DomainNodeToNodeEncryptionArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			EbsOptions: &opensearch.DomainEbsOptionsArgs{
/// 				EbsEnabled: pulumi.Bool(true),
/// 				VolumeSize: pulumi.Int(10),
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
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainClusterConfigArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainAdvancedSecurityOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainAdvancedSecurityOptionsMasterUserOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainEncryptAtRestArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainDomainEndpointOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainNodeToNodeEncryptionArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainEbsOptionsArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("ggkitty")
///             .engineVersion("Elasticsearch_7.1")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("r5.large.search")
///                 .build())
///             .advancedSecurityOptions(DomainAdvancedSecurityOptionsArgs.builder()
///                 .enabled(true)
///                 .anonymousAuthEnabled(true)
///                 .internalUserDatabaseEnabled(true)
///                 .masterUserOptions(DomainAdvancedSecurityOptionsMasterUserOptionsArgs.builder()
///                     .masterUserName("example")
///                     .masterUserPassword("Barbarbarbar1!")
///                     .build())
///                 .build())
///             .encryptAtRest(DomainEncryptAtRestArgs.builder()
///                 .enabled(true)
///                 .build())
///             .domainEndpointOptions(DomainDomainEndpointOptionsArgs.builder()
///                 .enforceHttps(true)
///                 .tlsSecurityPolicy("Policy-Min-TLS-1-2-2019-07")
///                 .build())
///             .nodeToNodeEncryption(DomainNodeToNodeEncryptionArgs.builder()
///                 .enabled(true)
///                 .build())
///             .ebsOptions(DomainEbsOptionsArgs.builder()
///                 .ebsEnabled(true)
///                 .volumeSize(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:Domain
///     properties:
///       domainName: ggkitty
///       engineVersion: Elasticsearch_7.1
///       clusterConfig:
///         instanceType: r5.large.search
///       advancedSecurityOptions:
///         enabled: true
///         anonymousAuthEnabled: true
///         internalUserDatabaseEnabled: true
///         masterUserOptions:
///           masterUserName: example
///           masterUserPassword: Barbarbarbar1!
///       encryptAtRest:
///         enabled: true
///       domainEndpointOptions:
///         enforceHttps: true
///         tlsSecurityPolicy: Policy-Min-TLS-1-2-2019-07
///       nodeToNodeEncryption:
///         enabled: true
///       ebsOptions:
///         ebsEnabled: true
///         volumeSize: 10
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch domains using the `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/domain:Domain example domain_name
/// ```
class Domain extends pulumi.CustomResource {
  /// IAM policy document specifying the access policies for the domain.
  late final pulumi.Output<String> accessPolicies;
  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your OpenSearch domain on every apply.
  late final pulumi.Output<Map<String, String>> advancedOptions;
  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html). Detailed below.
  late final pulumi.Output<DomainAdvancedSecurityOptions> advancedSecurityOptions;
  /// Configuration block for parameters required to enable all machine learning features. Detailed below.
  late final pulumi.Output<DomainAimlOptions> aimlOptions;
  /// ARN of the domain.
  late final pulumi.Output<String> arn;
  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  late final pulumi.Output<DomainAutoTuneOptions> autoTuneOptions;
  /// Configuration block for the cluster of the domain. Detailed below.
  late final pulumi.Output<DomainClusterConfig> clusterConfig;
  /// Configuration block for authenticating dashboard with Cognito. Detailed below.
  late final pulumi.Output<DomainCognitoOptions?> cognitoOptions;
  /// Domain-specific endpoint for Dashboard without https scheme.
  late final pulumi.Output<String> dashboardEndpoint;
  /// V2 domain endpoint for Dashboard that works with both IPv4 and IPv6 addresses, without https scheme.
  late final pulumi.Output<String> dashboardEndpointV2;
  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  late final pulumi.Output<DomainDomainEndpointOptions> domainEndpointOptions;
  /// Dual stack hosted zone ID for the domain.
  late final pulumi.Output<String> domainEndpointV2HostedZoneId;
  /// Unique identifier for the domain.
  late final pulumi.Output<String> domainId;
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;
  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/opensearch-service/pricing/). Detailed below.
  late final pulumi.Output<DomainEbsOptions> ebsOptions;
  /// Configuration block for encrypt at rest options. Only available for [certain instance types](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/encryption-at-rest.html). Detailed below.
  late final pulumi.Output<DomainEncryptAtRest> encryptAtRest;
  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  late final pulumi.Output<String> endpoint;
  /// V2 domain endpoint that works with both IPv4 and IPv6 addresses, used to submit index, search, and data upload requests.
  late final pulumi.Output<String> endpointV2;
  /// Either `Elasticsearch_X.Y` or `OpenSearch_X.Y` to specify the engine version for the Amazon OpenSearch Service domain. For example, `OpenSearch_1.0` or `Elasticsearch_7.9`.
  /// See [Creating and managing Amazon OpenSearch Service domains](http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains).
  /// Defaults to the lastest version of OpenSearch.
  late final pulumi.Output<String> engineVersion;
  /// Configuration block for enabling and managing IAM Identity Center integration within a domain. Detailed below.
  late final pulumi.Output<DomainIdentityCenterOptions?> identityCenterOptions;
  /// The IP address type for the endpoint. Valid values are `ipv4` and `dualstack`.
  late final pulumi.Output<String> ipAddressType;
  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  late final pulumi.Output<List<DomainLogPublishingOption>?> logPublishingOptions;
  /// Configuration block for node-to-node encryption options. Detailed below.
  late final pulumi.Output<DomainNodeToNodeEncryption> nodeToNodeEncryption;
  /// Configuration to add Off Peak update options. ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html)). Detailed below.
  late final pulumi.Output<DomainOffPeakWindowOptions> offPeakWindowOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running OpenSearch 5.3 and later, Amazon OpenSearch takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions, OpenSearch takes daily automated snapshots.
  late final pulumi.Output<DomainSnapshotOptions?> snapshotOptions;
  /// Software update options for the domain. Detailed below.
  late final pulumi.Output<DomainSoftwareUpdateOptions> softwareUpdateOptions;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html)). Detailed below.
  late final pulumi.Output<DomainVpcOptions?> vpcOptions;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_opensearch_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.advancedOptions = registerOutput<Map<String, String>>('advancedOptions');
    this.advancedSecurityOptions = registerOutput<DomainAdvancedSecurityOptions>('advancedSecurityOptions');
    this.aimlOptions = registerOutput<DomainAimlOptions>('aimlOptions');
    this.arn = registerOutput<String>('arn');
    this.autoTuneOptions = registerOutput<DomainAutoTuneOptions>('autoTuneOptions');
    this.clusterConfig = registerOutput<DomainClusterConfig>('clusterConfig');
    this.cognitoOptions = registerOutput<DomainCognitoOptions?>('cognitoOptions');
    this.dashboardEndpoint = registerOutput<String>('dashboardEndpoint');
    this.dashboardEndpointV2 = registerOutput<String>('dashboardEndpointV2');
    this.domainEndpointOptions = registerOutput<DomainDomainEndpointOptions>('domainEndpointOptions');
    this.domainEndpointV2HostedZoneId = registerOutput<String>('domainEndpointV2HostedZoneId');
    this.domainId = registerOutput<String>('domainId');
    this.domainName = registerOutput<String>('domainName');
    this.ebsOptions = registerOutput<DomainEbsOptions>('ebsOptions');
    this.encryptAtRest = registerOutput<DomainEncryptAtRest>('encryptAtRest');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointV2 = registerOutput<String>('endpointV2');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.identityCenterOptions = registerOutput<DomainIdentityCenterOptions?>('identityCenterOptions');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.logPublishingOptions = registerOutput<List<DomainLogPublishingOption>?>('logPublishingOptions');
    this.nodeToNodeEncryption = registerOutput<DomainNodeToNodeEncryption>('nodeToNodeEncryption');
    this.offPeakWindowOptions = registerOutput<DomainOffPeakWindowOptions>('offPeakWindowOptions');
    this.region = registerOutput<String>('region');
    this.snapshotOptions = registerOutput<DomainSnapshotOptions?>('snapshotOptions');
    this.softwareUpdateOptions = registerOutput<DomainSoftwareUpdateOptions>('softwareUpdateOptions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcOptions = registerOutput<DomainVpcOptions?>('vpcOptions');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.advancedOptions = registerOutput<Map<String, String>>('advancedOptions');
    this.advancedSecurityOptions = registerOutput<DomainAdvancedSecurityOptions>('advancedSecurityOptions');
    this.aimlOptions = registerOutput<DomainAimlOptions>('aimlOptions');
    this.arn = registerOutput<String>('arn');
    this.autoTuneOptions = registerOutput<DomainAutoTuneOptions>('autoTuneOptions');
    this.clusterConfig = registerOutput<DomainClusterConfig>('clusterConfig');
    this.cognitoOptions = registerOutput<DomainCognitoOptions?>('cognitoOptions');
    this.dashboardEndpoint = registerOutput<String>('dashboardEndpoint');
    this.dashboardEndpointV2 = registerOutput<String>('dashboardEndpointV2');
    this.domainEndpointOptions = registerOutput<DomainDomainEndpointOptions>('domainEndpointOptions');
    this.domainEndpointV2HostedZoneId = registerOutput<String>('domainEndpointV2HostedZoneId');
    this.domainId = registerOutput<String>('domainId');
    this.domainName = registerOutput<String>('domainName');
    this.ebsOptions = registerOutput<DomainEbsOptions>('ebsOptions');
    this.encryptAtRest = registerOutput<DomainEncryptAtRest>('encryptAtRest');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointV2 = registerOutput<String>('endpointV2');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.identityCenterOptions = registerOutput<DomainIdentityCenterOptions?>('identityCenterOptions');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.logPublishingOptions = registerOutput<List<DomainLogPublishingOption>?>('logPublishingOptions');
    this.nodeToNodeEncryption = registerOutput<DomainNodeToNodeEncryption>('nodeToNodeEncryption');
    this.offPeakWindowOptions = registerOutput<DomainOffPeakWindowOptions>('offPeakWindowOptions');
    this.region = registerOutput<String>('region');
    this.snapshotOptions = registerOutput<DomainSnapshotOptions?>('snapshotOptions');
    this.softwareUpdateOptions = registerOutput<DomainSoftwareUpdateOptions>('softwareUpdateOptions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcOptions = registerOutput<DomainVpcOptions?>('vpcOptions');
  }
}
