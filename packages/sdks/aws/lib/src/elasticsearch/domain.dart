import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_advanced_security_options.dart';
import 'domain_args.dart';
import 'domain_auto_tune_options.dart';
import 'domain_cluster_config.dart';
import 'domain_cognito_options.dart';
import 'domain_domain_endpoint_options.dart';
import 'domain_ebs_options.dart';
import 'domain_encrypt_at_rest.dart';
import 'domain_node_to_node_encryption.dart';
import 'domain_snapshot_options.dart';
import 'domain_state.dart';
import 'domain_vpc_options.dart';

/// Manages an AWS Elasticsearch Domain.
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
/// const example = new aws.elasticsearch.Domain("example", {
///     domainName: "example",
///     elasticsearchVersion: "7.10",
///     clusterConfig: {
///         instanceType: "r4.large.elasticsearch",
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
/// example = aws.elasticsearch.Domain("example",
///     domain_name="example",
///     elasticsearch_version="7.10",
///     cluster_config={
///         "instance_type": "r4.large.elasticsearch",
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
///     var example = new Aws.ElasticSearch.Domain("example", new()
///     {
///         DomainName = "example",
///         ElasticsearchVersion = "7.10",
///         ClusterConfig = new Aws.ElasticSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "r4.large.elasticsearch",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsearch.NewDomain(ctx, "example", &elasticsearch.DomainArgs{
/// 			DomainName:           pulumi.String("example"),
/// 			ElasticsearchVersion: pulumi.String("7.10"),
/// 			ClusterConfig: &elasticsearch.DomainClusterConfigArgs{
/// 				InstanceType: pulumi.String("r4.large.elasticsearch"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_elasticsearch_domain" "example" {
///   domain_name           = "example"
///   elasticsearch_version = "7.10"
///   cluster_config = {
///     instance_type = "r4.large.elasticsearch"
///   }
///   tags = {
///     "Domain" = "TestDomain"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainClusterConfigArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("example")
///             .elasticsearchVersion("7.10")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("r4.large.elasticsearch")
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
///     type: aws:elasticsearch:Domain
///     properties:
///       domainName: example
///       elasticsearchVersion: '7.10'
///       clusterConfig:
///         instanceType: r4.large.elasticsearch
///       tags:
///         Domain: TestDomain
/// ```
///
///
/// ### Access Policy
///
/// &gt; See also: `aws.elasticsearch.DomainPolicy` resource
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
/// const example = new aws.elasticsearch.Domain("example", {
///     domainName: domain,
///     accessPolicies: Promise.all([current, currentGetCallerIdentity]).then(([current, currentGetCallerIdentity]) => `{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Action\": \"es:*\",
///       \"Principal\": \"*\",
///       \"Effect\": \"Allow\",
///       \"Resource\": \"arn:aws:es:${current.region}:${currentGetCallerIdentity.accountId}:domain/${domain}/*\",
///       \"Condition\": {
///         \"IpAddress\": {\"aws:SourceIp\": [\"66.193.100.22/32\"]}
///       }
///     }
///   ]
/// }
/// `),
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
/// example = aws.elasticsearch.Domain("example",
///     domain_name=domain,
///     access_policies=f"""{{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {{
///       \"Action\": \"es:*\",
///       \"Principal\": \"*\",
///       \"Effect\": \"Allow\",
///       \"Resource\": \"arn:aws:es:{current.region}:{current_get_caller_identity.account_id}:domain/{domain}/*\",
///       \"Condition\": {{
///         \"IpAddress\": {{\"aws:SourceIp\": [\"66.193.100.22/32\"]}}
///       }}
///     }}
///   ]
/// }}
/// """)
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
///     var example = new Aws.ElasticSearch.Domain("example", new()
///     {
///         DomainName = domain,
///         AccessPolicies = Output.Tuple(current, currentGetCallerIdentity).Apply(values =>
///         {
///             var current = values.Item1;
///             var currentGetCallerIdentity = values.Item2;
///             return @$"{{
///   \""Version\"": \""2012-10-17\"",
///   \""Statement\"": [
///     {{
///       \""Action\"": \""es:*\"",
///       \""Principal\"": \""*\"",
///       \""Effect\"": \""Allow\"",
///       \""Resource\"": \""arn:aws:es:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:domain/{domain}/*\"",
///       \""Condition\"": {{
///         \""IpAddress\"": {{\""aws:SourceIp\"": [\""66.193.100.22/32\""]}}
///       }}
///     }}
///   ]
/// }}
/// ";
///         }),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
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
/// 		_, err = elasticsearch.NewDomain(ctx, "example", &elasticsearch.DomainArgs{
/// 			DomainName: pulumi.String(domain),
/// 			AccessPolicies: pulumi.Any(fmt.Sprintf(`{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Action\": \"es:*\",
///       \"Principal\": \"*\",
///       \"Effect\": \"Allow\",
///       \"Resource\": \"arn:aws:es:%v:%v:domain/%v/*\",
///       \"Condition\": {
///         \"IpAddress\": {\"aws:SourceIp\": [\"66.193.100.22/32\"]}
///       }
///     }
///   ]
/// }
/// `, current.Region, currentGetCallerIdentity.AccountId, domain)),
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
/// data "aws_getregion" "current" {
/// }
/// data "aws_getcalleridentity" "currentGetCallerIdentity" {
/// }
///
/// resource "aws_elasticsearch_domain" "example" {
///   domain_name     = var.domain
///   access_policies ="{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Action\": \"es:*\",
///       \"Principal\": \"*\",
///       \"Effect\": \"Allow\",
///       \"Resource\": \"arn:aws:es:${data.aws_getregion.current.region}:${data.aws_getcalleridentity.currentGetCallerIdentity.account_id}:domain/${var.domain}/*\",
///       \"Condition\": {
///         \"IpAddress\": {\"aws:SourceIp\": [\"66.193.100.22/32\"]}
///       }
///     }
///   ]
/// }
/// "
/// }
/// variable "domain" {
///   type    = string
///   default = "tf-test"
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
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
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
///         final var config = ctx.config();
///         final var domain = config.get("domain").orElse("tf-test");
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName(domain)
///             .accessPolicies("""
/// {
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Action\": \"es:*\",
///       \"Principal\": \"*\",
///       \"Effect\": \"Allow\",
///       \"Resource\": \"arn:aws:es:%s:%s:domain/%s/*\",
///       \"Condition\": {
///         \"IpAddress\": {\"aws:SourceIp\": [\"66.193.100.22/32\"]}
///       }
///     }
///   ]
/// }
/// ", current.region(),currentGetCallerIdentity.accountId(),domain))
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
///   example:
///     type: aws:elasticsearch:Domain
///     properties:
///       domainName: ${domain}
///       accessPolicies: |
///         {
///           \"Version\": \"2012-10-17\",
///           \"Statement\": [
///             {
///               \"Action\": \"es:*\",
///               \"Principal\": \"*\",
///               \"Effect\": \"Allow\",
///               \"Resource\": \"arn:aws:es:${current.region}:${currentGetCallerIdentity.accountId}:domain/${domain}/*\",
///               \"Condition\": {
///                 \"IpAddress\": {\"aws:SourceIp\": [\"66.193.100.22/32\"]}
///               }
///             }
///           ]
///         }
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ### Log Publishing to CloudWatch Logs
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
/// const exampleDomain = new aws.elasticsearch.Domain("example", {logPublishingOptions: [{
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
/// example_domain = aws.elasticsearch.Domain("example", log_publishing_options=[{
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
///     var exampleDomain = new Aws.ElasticSearch.Domain("example", new()
///     {
///         LogPublishingOptions = new[]
///         {
///             new Aws.ElasticSearch.Inputs.DomainLogPublishingOptionArgs
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
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
/// 		_, err = elasticsearch.NewDomain(ctx, "example", &elasticsearch.DomainArgs{
/// 			LogPublishingOptions: elasticsearch.DomainLogPublishingOptionArray{
/// 				&elasticsearch.DomainLogPublishingOptionArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     effect = "Allow"
///     principals {
///       type        = "Service"
///       identifiers = ["es.amazonaws.com"]
///     }
///     actions   = ["logs:PutLogEvents", "logs:PutLogEventsBatch", "logs:CreateLogStream"]
///     resources = ["arn:aws:logs:*"]
///   }
/// }
///
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "example"
/// }
/// resource "aws_cloudwatch_logresourcepolicy" "example" {
///   policy_name     = "example"
///   policy_document = data.aws_iam_getpolicydocument.example.json
/// }
/// resource "aws_elasticsearch_domain" "example" {
///   log_publishing_options {
///     cloudwatch_log_group_arn = aws_cloudwatch_loggroup.example.arn
///     log_type                 = "INDEX_SLOW_LOGS"
///   }
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainLogPublishingOptionArgs;
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
///     type: aws:elasticsearch:Domain
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
/// ### VPC based ES
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const vpc = config.requireObject<any>("vpc");
/// const domain = config.get("domain") || "tf-test";
/// const selected = aws.ec2.getVpc({
///     tags: {
///         Name: vpc,
///     },
/// });
/// const selectedGetSubnets = selected.then(selected => aws.ec2.getSubnets({
///     filters: [{
///         name: "vpc-id",
///         values: [selected.id],
///     }],
///     tags: {
///         Tier: "private",
///     },
/// }));
/// const current = aws.getRegion({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const es = new aws.ec2.SecurityGroup("es", {
///     name: `${vpc}-elasticsearch-${domain}`,
///     description: "Managed by Pulumi",
///     vpcId: selected.then(selected => selected.id),
///     ingress: [{
///         fromPort: 443,
///         toPort: 443,
///         protocol: "tcp",
///         cidrBlocks: [selected.then(selected => selected.cidrBlock)],
///     }],
/// });
/// const esServiceLinkedRole = new aws.iam.ServiceLinkedRole("es", {awsServiceName: "opensearchservice.amazonaws.com"});
/// const esDomain = new aws.elasticsearch.Domain("es", {
///     domainName: domain,
///     elasticsearchVersion: "6.3",
///     clusterConfig: {
///         instanceType: "m4.large.elasticsearch",
///         zoneAwarenessEnabled: true,
///     },
///     vpcOptions: {
///         subnetIds: [
///             selectedGetSubnets.then(selectedGetSubnets => selectedGetSubnets.ids?.[0]),
///             selectedGetSubnets.then(selectedGetSubnets => selectedGetSubnets.ids?.[1]),
///         ],
///         securityGroupIds: [es.id],
///     },
///     advancedOptions: {
///         "rest.action.multi.allow_explicit_index": "true",
///     },
///     accessPolicies: Promise.all([current, currentGetCallerIdentity]).then(([current, currentGetCallerIdentity]) => `{
/// \t\"Version\": \"2012-10-17\",
/// \t\"Statement\": [
/// \t\t{
/// \t\t\t\"Action\": \"es:*\",
/// \t\t\t\"Principal\": \"*\",
/// \t\t\t\"Effect\": \"Allow\",
/// \t\t\t\"Resource\": \"arn:aws:es:${current.region}:${currentGetCallerIdentity.accountId}:domain/${domain}/*\"
/// \t\t}
/// \t]
/// }
/// `),
///     tags: {
///         Domain: "TestDomain",
///     },
/// }, {
///     dependsOn: [esServiceLinkedRole],
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
/// selected = aws.ec2.get_vpc(tags={
///     "Name": vpc,
/// })
/// selected_get_subnets = aws.ec2.get_subnets(filters=[{
///         "name": "vpc-id",
///         "values": [selected.id],
///     }],
///     tags={
///         "Tier": "private",
///     })
/// current = aws.get_region()
/// current_get_caller_identity = aws.get_caller_identity()
/// es = aws.ec2.SecurityGroup("es",
///     name=f"{vpc}-elasticsearch-{domain}",
///     description="Managed by Pulumi",
///     vpc_id=selected.id,
///     ingress=[{
///         "from_port": 443,
///         "to_port": 443,
///         "protocol": "tcp",
///         "cidr_blocks": [selected.cidr_block],
///     }])
/// es_service_linked_role = aws.iam.ServiceLinkedRole("es", aws_service_name="opensearchservice.amazonaws.com")
/// es_domain = aws.elasticsearch.Domain("es",
///     domain_name=domain,
///     elasticsearch_version="6.3",
///     cluster_config={
///         "instance_type": "m4.large.elasticsearch",
///         "zone_awareness_enabled": True,
///     },
///     vpc_options={
///         "subnet_ids": [
///             selected_get_subnets.ids[0],
///             selected_get_subnets.ids[1],
///         ],
///         "security_group_ids": [es.id],
///     },
///     advanced_options={
///         "rest.action.multi.allow_explicit_index": "true",
///     },
///     access_policies=f"""{{
/// \t\"Version\": \"2012-10-17\",
/// \t\"Statement\": [
/// \t\t{{
/// \t\t\t\"Action\": \"es:*\",
/// \t\t\t\"Principal\": \"*\",
/// \t\t\t\"Effect\": \"Allow\",
/// \t\t\t\"Resource\": \"arn:aws:es:{current.region}:{current_get_caller_identity.account_id}:domain/{domain}/*\"
/// \t\t}}
/// \t]
/// }}
/// """,
///     tags={
///         "Domain": "TestDomain",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[es_service_linked_role]))
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
///     var selected = Aws.Ec2.GetVpc.Invoke(new()
///     {
///         Tags =
///         {
///             { "Name", vpc },
///         },
///     });
///
///     var selectedGetSubnets = Aws.Ec2.GetSubnets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetSubnetsFilterInputArgs
///             {
///                 Name = "vpc-id",
///                 Values = new[]
///                 {
///                     selected.Apply(getVpcResult => getVpcResult.Id),
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
///     var es = new Aws.Ec2.SecurityGroup("es", new()
///     {
///         Name = $"{vpc}-elasticsearch-{domain}",
///         Description = "Managed by Pulumi",
///         VpcId = selected.Apply(getVpcResult => getVpcResult.Id),
///         Ingress = new[]
///         {
///             new Aws.Ec2.Inputs.SecurityGroupIngressArgs
///             {
///                 FromPort = 443,
///                 ToPort = 443,
///                 Protocol = "tcp",
///                 CidrBlocks = new[]
///                 {
///                     selected.Apply(getVpcResult => getVpcResult.CidrBlock),
///                 },
///             },
///         },
///     });
///
///     var esServiceLinkedRole = new Aws.Iam.ServiceLinkedRole("es", new()
///     {
///         AwsServiceName = "opensearchservice.amazonaws.com",
///     });
///
///     var esDomain = new Aws.ElasticSearch.Domain("es", new()
///     {
///         DomainName = domain,
///         ElasticsearchVersion = "6.3",
///         ClusterConfig = new Aws.ElasticSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "m4.large.elasticsearch",
///             ZoneAwarenessEnabled = true,
///         },
///         VpcOptions = new Aws.ElasticSearch.Inputs.DomainVpcOptionsArgs
///         {
///             SubnetIds = new[]
///             {
///                 selectedGetSubnets.Apply(getSubnetsResult => getSubnetsResult.Ids[0]),
///                 selectedGetSubnets.Apply(getSubnetsResult => getSubnetsResult.Ids[1]),
///             },
///             SecurityGroupIds = new[]
///             {
///                 es.Id,
///             },
///         },
///         AdvancedOptions =
///         {
///             { "rest.action.multi.allow_explicit_index", "true" },
///         },
///         AccessPolicies = Output.Tuple(current, currentGetCallerIdentity).Apply(values =>
///         {
///             var current = values.Item1;
///             var currentGetCallerIdentity = values.Item2;
///             return @$"{{
/// \t\""Version\"": \""2012-10-17\"",
/// \t\""Statement\"": [
/// \t\t{{
/// \t\t\t\""Action\"": \""es:*\"",
/// \t\t\t\""Principal\"": \""*\"",
/// \t\t\t\""Effect\"": \""Allow\"",
/// \t\t\t\""Resource\"": \""arn:aws:es:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:domain/{domain}/*\""
/// \t\t}}
/// \t]
/// }}
/// ";
///         }),
///         Tags =
///         {
///             { "Domain", "TestDomain" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             esServiceLinkedRole,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var vpc interface{}
/// 		cfg.RequireObject("vpc", &vpc)
/// 		domain := "tf-test"
/// 		if param := cfg.Get("domain"); param != "" {
/// 			domain = param
/// 		}
/// 		selected, err := ec2.LookupVpc(ctx, &ec2.LookupVpcArgs{
/// 			Tags: map[string]pulumi.String{
/// 				"Name": vpc,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		selectedGetSubnets, err := ec2.GetSubnets(ctx, &ec2.GetSubnetsArgs{
/// 			Filters: []ec2.GetSubnetsFilter{
/// 				{
/// 					Name: "vpc-id",
/// 					Values: pulumi.StringArray{
/// 						selected.Id,
/// 					},
/// 				},
/// 			},
/// 			Tags: map[string]string{
/// 				"Tier": "private",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		es, err := ec2.NewSecurityGroup(ctx, "es", &ec2.SecurityGroupArgs{
/// 			Name:        pulumi.Sprintf("%v-elasticsearch-%v", vpc, domain),
/// 			Description: pulumi.String("Managed by Pulumi"),
/// 			VpcId:       pulumi.String(selected.Id),
/// 			Ingress: ec2.SecurityGroupIngressArray{
/// 				&ec2.SecurityGroupIngressArgs{
/// 					FromPort: pulumi.Int(443),
/// 					ToPort:   pulumi.Int(443),
/// 					Protocol: pulumi.String("tcp"),
/// 					CidrBlocks: pulumi.StringArray{
/// 						pulumi.String(selected.CidrBlock),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		esServiceLinkedRole, err := iam.NewServiceLinkedRole(ctx, "es", &iam.ServiceLinkedRoleArgs{
/// 			AwsServiceName: pulumi.String("opensearchservice.amazonaws.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticsearch.NewDomain(ctx, "es", &elasticsearch.DomainArgs{
/// 			DomainName:           pulumi.String(domain),
/// 			ElasticsearchVersion: pulumi.String("6.3"),
/// 			ClusterConfig: &elasticsearch.DomainClusterConfigArgs{
/// 				InstanceType:         pulumi.String("m4.large.elasticsearch"),
/// 				ZoneAwarenessEnabled: pulumi.Bool(true),
/// 			},
/// 			VpcOptions: &elasticsearch.DomainVpcOptionsArgs{
/// 				SubnetIds: pulumi.StringArray{
/// 					pulumi.String(selectedGetSubnets.Ids[0]),
/// 					pulumi.String(selectedGetSubnets.Ids[1]),
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					es.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			AdvancedOptions: pulumi.StringMap{
/// 				"rest.action.multi.allow_explicit_index": pulumi.String("true"),
/// 			},
/// 			AccessPolicies: pulumi.Any(fmt.Sprintf(`{
/// \t\"Version\": \"2012-10-17\",
/// \t\"Statement\": [
/// \t\t{
/// \t\t\t\"Action\": \"es:*\",
/// \t\t\t\"Principal\": \"*\",
/// \t\t\t\"Effect\": \"Allow\",
/// \t\t\t\"Resource\": \"arn:aws:es:%v:%v:domain/%v/*\"
/// \t\t}
/// \t]
/// }
/// `, current.Region, currentGetCallerIdentity.AccountId, domain)),
/// 			Tags: pulumi.StringMap{
/// 				"Domain": pulumi.String("TestDomain"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			esServiceLinkedRole,
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
/// data "aws_ec2_getvpc" "selected" {
///   tags = {
///     "Name" = var.vpc
///   }
/// }
/// data "aws_ec2_getsubnets" "selectedGetSubnets" {
///   filters {
///     name   = "vpc-id"
///     values = [data.aws_ec2_getvpc.selected.id]
///   }
///   tags = {
///     "Tier" = "private"
///   }
/// }
/// data "aws_getregion" "current" {
/// }
/// data "aws_getcalleridentity" "currentGetCallerIdentity" {
/// }
///
/// resource "aws_ec2_securitygroup" "es" {
///   name        ="${var.vpc}-elasticsearch-${var.domain}"
///   description = "Managed by Pulumi"
///   vpc_id      = data.aws_ec2_getvpc.selected.id
///   ingress {
///     from_port   = 443
///     to_port     = 443
///     protocol    = "tcp"
///     cidr_blocks = [data.aws_ec2_getvpc.selected.cidr_block]
///   }
/// }
/// resource "aws_iam_servicelinkedrole" "es" {
///   aws_service_name = "opensearchservice.amazonaws.com"
/// }
/// resource "aws_elasticsearch_domain" "es" {
///   depends_on            = [aws_iam_servicelinkedrole.es]
///   domain_name           = var.domain
///   elasticsearch_version = "6.3"
///   cluster_config = {
///     instance_type          = "m4.large.elasticsearch"
///     zone_awareness_enabled = true
///   }
///   vpc_options = {
///     subnet_ids         = [data.aws_ec2_getsubnets.selectedGetSubnets.ids[0], data.aws_ec2_getsubnets.selectedGetSubnets.ids[1]]
///     security_group_ids = [aws_ec2_securitygroup.es.id]
///   }
///   advanced_options = {
///     "rest.action.multi.allow_explicit_index" = "true"
///   }
///   access_policies ="{
/// \t\"Version\": \"2012-10-17\",
/// \t\"Statement\": [
/// \t\t{
/// \t\t\t\"Action\": \"es:*\",
/// \t\t\t\"Principal\": \"*\",
/// \t\t\t\"Effect\": \"Allow\",
/// \t\t\t\"Resource\": \"arn:aws:es:${data.aws_getregion.current.region}:${data.aws_getcalleridentity.currentGetCallerIdentity.account_id}:domain/${var.domain}/*\"
/// \t\t}
/// \t]
/// }
/// "
///   tags = {
///     "Domain" = "TestDomain"
///   }
/// }
/// variable "vpc" {
/// }
/// variable "domain" {
///   type    = string
///   default = "tf-test"
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
/// import com.pulumi.aws.ec2.inputs.GetSubnetsFilterArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.SecurityGroupIngressArgs;
/// import com.pulumi.aws.iam.ServiceLinkedRole;
/// import com.pulumi.aws.iam.ServiceLinkedRoleArgs;
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainClusterConfigArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainVpcOptionsArgs;
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
///         final var config = ctx.config();
///         final var vpc = config.require("vpc");
///         final var domain = config.get("domain").orElse("tf-test");
///         final var selected = Ec2Functions.getVpc(GetVpcArgs.builder()
///             .tags(Map.of("Name", vpc))
///             .build());
///
///         final var selectedGetSubnets = Ec2Functions.getSubnets(GetSubnetsArgs.builder()
///             .filters(GetSubnetsFilterArgs.builder()
///                 .name("vpc-id")
///                 .values(selected.id())
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
///         var es = new SecurityGroup("es", SecurityGroupArgs.builder()
///             .name(String.format("%s-elasticsearch-%s", vpc,domain))
///             .description("Managed by Pulumi")
///             .vpcId(selected.id())
///             .ingress(SecurityGroupIngressArgs.builder()
///                 .fromPort(443)
///                 .toPort(443)
///                 .protocol("tcp")
///                 .cidrBlocks(selected.cidrBlock())
///                 .build())
///             .build());
///
///         var esServiceLinkedRole = new ServiceLinkedRole("esServiceLinkedRole", ServiceLinkedRoleArgs.builder()
///             .awsServiceName("opensearchservice.amazonaws.com")
///             .build());
///
///         var esDomain = new Domain("esDomain", DomainArgs.builder()
///             .domainName(domain)
///             .elasticsearchVersion("6.3")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("m4.large.elasticsearch")
///                 .zoneAwarenessEnabled(true)
///                 .build())
///             .vpcOptions(DomainVpcOptionsArgs.builder()
///                 .subnetIds(
///                     selectedGetSubnets.ids()[0],
///                     selectedGetSubnets.ids()[1])
///                 .securityGroupIds(es.id())
///                 .build())
///             .advancedOptions(Map.of("rest.action.multi.allow_explicit_index", "true"))
///             .accessPolicies("""
/// {
/// \t\"Version\": \"2012-10-17\",
/// \t\"Statement\": [
/// \t\t{
/// \t\t\t\"Action\": \"es:*\",
/// \t\t\t\"Principal\": \"*\",
/// \t\t\t\"Effect\": \"Allow\",
/// \t\t\t\"Resource\": \"arn:aws:es:%s:%s:domain/%s/*\"
/// \t\t}
/// \t]
/// }
/// ", current.region(),currentGetCallerIdentity.accountId(),domain))
///             .tags(Map.of("Domain", "TestDomain"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(esServiceLinkedRole)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   vpc:
///     type: object
///   domain:
///     type: string
///     default: tf-test
/// resources:
///   es:
///     type: aws:ec2:SecurityGroup
///     properties:
///       name: ${vpc}-elasticsearch-${domain}
///       description: Managed by Pulumi
///       vpcId: ${selected.id}
///       ingress:
///         - fromPort: 443
///           toPort: 443
///           protocol: tcp
///           cidrBlocks:
///             - ${selected.cidrBlock}
///   esServiceLinkedRole:
///     type: aws:iam:ServiceLinkedRole
///     name: es
///     properties:
///       awsServiceName: opensearchservice.amazonaws.com
///   esDomain:
///     type: aws:elasticsearch:Domain
///     name: es
///     properties:
///       domainName: ${domain}
///       elasticsearchVersion: '6.3'
///       clusterConfig:
///         instanceType: m4.large.elasticsearch
///         zoneAwarenessEnabled: true
///       vpcOptions:
///         subnetIds:
///           - ${selectedGetSubnets.ids[0]}
///           - ${selectedGetSubnets.ids[1]}
///         securityGroupIds:
///           - ${es.id}
///       advancedOptions:
///         rest.action.multi.allow_explicit_index: 'true'
///       accessPolicies: |
///         {
///         \t\"Version\": \"2012-10-17\",
///         \t\"Statement\": [
///         \t\t{
///         \t\t\t\"Action\": \"es:*\",
///         \t\t\t\"Principal\": \"*\",
///         \t\t\t\"Effect\": \"Allow\",
///         \t\t\t\"Resource\": \"arn:aws:es:${current.region}:${currentGetCallerIdentity.accountId}:domain/${domain}/*\"
///         \t\t}
///         \t]
///         }
///       tags:
///         Domain: TestDomain
///     options:
///       dependsOn:
///         - ${esServiceLinkedRole}
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getVpc
///       arguments:
///         tags:
///           Name: ${vpc}
///   selectedGetSubnets:
///     fn::invoke:
///       function: aws:ec2:getSubnets
///       arguments:
///         filters:
///           - name: vpc-id
///             values:
///               - ${selected.id}
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Elasticsearch domains using the `domainName`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticsearch/domain:Domain example domain_name
/// ```
class Domain extends pulumi.CustomResource {
  /// IAM policy document specifying the access policies for the domain.
  late final pulumi.Output<String> accessPolicies;
  /// Key-value string pairs to specify advanced configuration options. Note that the values for these configuration options must be strings (wrapped in quotes) or they may be wrong and cause a perpetual diff, causing the provider to want to recreate your Elasticsearch domain on every apply.
  late final pulumi.Output<Map<String, String>> advancedOptions;
  /// Configuration block for [fine-grained access control](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/fgac.html). Detailed below.
  late final pulumi.Output<DomainAdvancedSecurityOptions> advancedSecurityOptions;
  /// ARN of the domain.
  late final pulumi.Output<String> arn;
  /// Configuration block for the Auto-Tune options of the domain. Detailed below.
  late final pulumi.Output<DomainAutoTuneOptions> autoTuneOptions;
  /// Configuration block for the cluster of the domain. Detailed below.
  late final pulumi.Output<DomainClusterConfig> clusterConfig;
  /// Configuration block for authenticating Kibana with Cognito. Detailed below.
  late final pulumi.Output<DomainCognitoOptions?> cognitoOptions;
  /// Configuration block for domain endpoint HTTP(S) related options. Detailed below.
  late final pulumi.Output<DomainDomainEndpointOptions> domainEndpointOptions;
  /// Unique identifier for the domain.
  late final pulumi.Output<String> domainId;
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;
  /// Configuration block for EBS related options, may be required based on chosen [instance size](https://aws.amazon.com/elasticsearch-service/pricing/). Detailed below.
  late final pulumi.Output<DomainEbsOptions> ebsOptions;
  /// Version of Elasticsearch to deploy. Defaults to `1.5`.
  late final pulumi.Output<String?> elasticsearchVersion;
  /// Configuration block for encrypt at rest options. Only available for [certain instance types](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-supported-instance-types.html). Detailed below.
  late final pulumi.Output<DomainEncryptAtRest> encryptAtRest;
  /// Domain-specific endpoint used to submit index, search, and data upload requests.
  late final pulumi.Output<String> endpoint;
  /// Domain-specific endpoint for kibana without https scheme.
  late final pulumi.Output<String> kibanaEndpoint;
  /// Configuration block for publishing slow and application logs to CloudWatch Logs. This block can be declared multiple times, for each log_type, within the same resource. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>?> logPublishingOptions;
  /// Configuration block for node-to-node encryption options. Detailed below.
  late final pulumi.Output<DomainNodeToNodeEncryption> nodeToNodeEncryption;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for snapshot related options. Detailed below. DEPRECATED. For domains running Elasticsearch 5.3 and later, Amazon ES takes hourly automated snapshots, making this setting irrelevant. For domains running earlier versions of Elasticsearch, Amazon ES takes daily automated snapshots.
  late final pulumi.Output<DomainSnapshotOptions?> snapshotOptions;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for VPC related options. Adding or removing this configuration forces a new resource ([documentation](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-vpc-limitations)). Detailed below.
  late final pulumi.Output<DomainVpcOptions?> vpcOptions;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_elasticsearch_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticsearch/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicies = registerOutput<String>('accessPolicies');
    advancedOptions = registerOutput<Map<String, String>>('advancedOptions');
    advancedSecurityOptions = registerOutput<DomainAdvancedSecurityOptions>('advancedSecurityOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainAdvancedSecurityOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    autoTuneOptions = registerOutput<DomainAutoTuneOptions>('autoTuneOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainAutoTuneOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterConfig = registerOutput<DomainClusterConfig>('clusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cognitoOptions = registerOutput<DomainCognitoOptions?>('cognitoOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainCognitoOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainEndpointOptions = registerOutput<DomainDomainEndpointOptions>('domainEndpointOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainDomainEndpointOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainId = registerOutput<String>('domainId');
    domainName = registerOutput<String>('domainName');
    ebsOptions = registerOutput<DomainEbsOptions>('ebsOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainEbsOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticsearchVersion = registerOutput<String?>('elasticsearchVersion');
    encryptAtRest = registerOutput<DomainEncryptAtRest>('encryptAtRest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainEncryptAtRest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    kibanaEndpoint = registerOutput<String>('kibanaEndpoint');
    logPublishingOptions = registerOutput<List<Map<String, dynamic>>?>('logPublishingOptions');
    nodeToNodeEncryption = registerOutput<DomainNodeToNodeEncryption>('nodeToNodeEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainNodeToNodeEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    snapshotOptions = registerOutput<DomainSnapshotOptions?>('snapshotOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainSnapshotOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcOptions = registerOutput<DomainVpcOptions?>('vpcOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
          'aws:elasticsearch/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicies = registerOutput<String>('accessPolicies');
    advancedOptions = registerOutput<Map<String, String>>('advancedOptions');
    advancedSecurityOptions = registerOutput<DomainAdvancedSecurityOptions>('advancedSecurityOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainAdvancedSecurityOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    autoTuneOptions = registerOutput<DomainAutoTuneOptions>('autoTuneOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainAutoTuneOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterConfig = registerOutput<DomainClusterConfig>('clusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cognitoOptions = registerOutput<DomainCognitoOptions?>('cognitoOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainCognitoOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainEndpointOptions = registerOutput<DomainDomainEndpointOptions>('domainEndpointOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainDomainEndpointOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainId = registerOutput<String>('domainId');
    domainName = registerOutput<String>('domainName');
    ebsOptions = registerOutput<DomainEbsOptions>('ebsOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainEbsOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elasticsearchVersion = registerOutput<String?>('elasticsearchVersion');
    encryptAtRest = registerOutput<DomainEncryptAtRest>('encryptAtRest', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainEncryptAtRest.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    kibanaEndpoint = registerOutput<String>('kibanaEndpoint');
    logPublishingOptions = registerOutput<List<Map<String, dynamic>>?>('logPublishingOptions');
    nodeToNodeEncryption = registerOutput<DomainNodeToNodeEncryption>('nodeToNodeEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainNodeToNodeEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    snapshotOptions = registerOutput<DomainSnapshotOptions?>('snapshotOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainSnapshotOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcOptions = registerOutput<DomainVpcOptions?>('vpcOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
