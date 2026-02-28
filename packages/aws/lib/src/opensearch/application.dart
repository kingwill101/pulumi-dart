import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_app_config.dart';
import 'application_args.dart';
import 'application_data_source.dart';
import 'application_iam_identity_center_options.dart';
import 'application_timeouts.dart';

/// Provides an AWS OpenSearch Application resource. OpenSearch Applications provide a user interface for interacting with OpenSearch data and managing OpenSearch resources.
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
/// const example = new aws.opensearch.Application("example", {name: "my-opensearch-app"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.Application("example", name="my-opensearch-app")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.OpenSearch.Application("example", new()
///     {
///         Name = "my-opensearch-app",
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
/// 		_, err := opensearch.NewApplication(ctx, "example", &opensearch.ApplicationArgs{
/// 			Name: pulumi.String("my-opensearch-app"),
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
/// import com.pulumi.aws.opensearch.Application;
/// import com.pulumi.aws.opensearch.ApplicationArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("my-opensearch-app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:Application
///     properties:
///       name: my-opensearch-app
/// ```
///
///
/// ### Application with Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.Application("example", {
///     name: "my-opensearch-app",
///     appConfigs: [
///         {
///             key: "opensearchDashboards.dashboardAdmin.users",
///             value: "admin-user",
///         },
///         {
///             key: "opensearchDashboards.dashboardAdmin.groups",
///             value: "admin-group",
///         },
///     ],
///     tags: {
///         Environment: "production",
///         Team: "data-platform",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.Application("example",
///     name="my-opensearch-app",
///     app_configs=[
///         {
///             "key": "opensearchDashboards.dashboardAdmin.users",
///             "value": "admin-user",
///         },
///         {
///             "key": "opensearchDashboards.dashboardAdmin.groups",
///             "value": "admin-group",
///         },
///     ],
///     tags={
///         "Environment": "production",
///         "Team": "data-platform",
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
///     var example = new Aws.OpenSearch.Application("example", new()
///     {
///         Name = "my-opensearch-app",
///         AppConfigs = new[]
///         {
///             new Aws.OpenSearch.Inputs.ApplicationAppConfigArgs
///             {
///                 Key = "opensearchDashboards.dashboardAdmin.users",
///                 Value = "admin-user",
///             },
///             new Aws.OpenSearch.Inputs.ApplicationAppConfigArgs
///             {
///                 Key = "opensearchDashboards.dashboardAdmin.groups",
///                 Value = "admin-group",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Team", "data-platform" },
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
/// 		_, err := opensearch.NewApplication(ctx, "example", &opensearch.ApplicationArgs{
/// 			Name: pulumi.String("my-opensearch-app"),
/// 			AppConfigs: opensearch.ApplicationAppConfigArray{
/// 				&opensearch.ApplicationAppConfigArgs{
/// 					Key:   pulumi.String("opensearchDashboards.dashboardAdmin.users"),
/// 					Value: pulumi.String("admin-user"),
/// 				},
/// 				&opensearch.ApplicationAppConfigArgs{
/// 					Key:   pulumi.String("opensearchDashboards.dashboardAdmin.groups"),
/// 					Value: pulumi.String("admin-group"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Team":        pulumi.String("data-platform"),
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
/// import com.pulumi.aws.opensearch.Application;
/// import com.pulumi.aws.opensearch.ApplicationArgs;
/// import com.pulumi.aws.opensearch.inputs.ApplicationAppConfigArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("my-opensearch-app")
///             .appConfigs(
///                 ApplicationAppConfigArgs.builder()
///                     .key("opensearchDashboards.dashboardAdmin.users")
///                     .value("admin-user")
///                     .build(),
///                 ApplicationAppConfigArgs.builder()
///                     .key("opensearchDashboards.dashboardAdmin.groups")
///                     .value("admin-group")
///                     .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Team", "data-platform")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:Application
///     properties:
///       name: my-opensearch-app
///       appConfigs:
///         - key: opensearchDashboards.dashboardAdmin.users
///           value: admin-user
///         - key: opensearchDashboards.dashboardAdmin.groups
///           value: admin-group
///       tags:
///         Environment: production
///         Team: data-platform
/// ```
///
///
/// ### Application with Data Sources
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.Domain("example", {
///     domainName: "example-domain",
///     engineVersion: "OpenSearch_2.3",
///     clusterConfig: {
///         instanceType: "t3.small.search",
///     },
///     ebsOptions: {
///         ebsEnabled: true,
///         volumeSize: 20,
///     },
/// });
/// const exampleApplication = new aws.opensearch.Application("example", {
///     name: "my-opensearch-app",
///     dataSources: [{
///         dataSourceArn: example.arn,
///         dataSourceDescription: "Primary OpenSearch domain for analytics",
///     }],
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.Domain("example",
///     domain_name="example-domain",
///     engine_version="OpenSearch_2.3",
///     cluster_config={
///         "instance_type": "t3.small.search",
///     },
///     ebs_options={
///         "ebs_enabled": True,
///         "volume_size": 20,
///     })
/// example_application = aws.opensearch.Application("example",
///     name="my-opensearch-app",
///     data_sources=[{
///         "data_source_arn": example.arn,
///         "data_source_description": "Primary OpenSearch domain for analytics",
///     }],
///     tags={
///         "Environment": "production",
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
///         DomainName = "example-domain",
///         EngineVersion = "OpenSearch_2.3",
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "t3.small.search",
///         },
///         EbsOptions = new Aws.OpenSearch.Inputs.DomainEbsOptionsArgs
///         {
///             EbsEnabled = true,
///             VolumeSize = 20,
///         },
///     });
///
///     var exampleApplication = new Aws.OpenSearch.Application("example", new()
///     {
///         Name = "my-opensearch-app",
///         DataSources = new[]
///         {
///             new Aws.OpenSearch.Inputs.ApplicationDataSourceArgs
///             {
///                 DataSourceArn = example.Arn,
///                 DataSourceDescription = "Primary OpenSearch domain for analytics",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "production" },
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
/// 		example, err := opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			DomainName:    pulumi.String("example-domain"),
/// 			EngineVersion: pulumi.String("OpenSearch_2.3"),
/// 			ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// 				InstanceType: pulumi.String("t3.small.search"),
/// 			},
/// 			EbsOptions: &opensearch.DomainEbsOptionsArgs{
/// 				EbsEnabled: pulumi.Bool(true),
/// 				VolumeSize: pulumi.Int(20),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewApplication(ctx, "example", &opensearch.ApplicationArgs{
/// 			Name: pulumi.String("my-opensearch-app"),
/// 			DataSources: opensearch.ApplicationDataSourceArray{
/// 				&opensearch.ApplicationDataSourceArgs{
/// 					DataSourceArn:         example.Arn,
/// 					DataSourceDescription: pulumi.String("Primary OpenSearch domain for analytics"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
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
/// import com.pulumi.aws.opensearch.inputs.DomainEbsOptionsArgs;
/// import com.pulumi.aws.opensearch.Application;
/// import com.pulumi.aws.opensearch.ApplicationArgs;
/// import com.pulumi.aws.opensearch.inputs.ApplicationDataSourceArgs;
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
///             .domainName("example-domain")
///             .engineVersion("OpenSearch_2.3")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("t3.small.search")
///                 .build())
///             .ebsOptions(DomainEbsOptionsArgs.builder()
///                 .ebsEnabled(true)
///                 .volumeSize(20)
///                 .build())
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("my-opensearch-app")
///             .dataSources(ApplicationDataSourceArgs.builder()
///                 .dataSourceArn(example.arn())
///                 .dataSourceDescription("Primary OpenSearch domain for analytics")
///                 .build())
///             .tags(Map.of("Environment", "production"))
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
///       domainName: example-domain
///       engineVersion: OpenSearch_2.3
///       clusterConfig:
///         instanceType: t3.small.search
///       ebsOptions:
///         ebsEnabled: true
///         volumeSize: 20
///   exampleApplication:
///     type: aws:opensearch:Application
///     name: example
///     properties:
///       name: my-opensearch-app
///       dataSources:
///         - dataSourceArn: ${example.arn}
///           dataSourceDescription: Primary OpenSearch domain for analytics
///       tags:
///         Environment: production
/// ```
///
///
/// ### Application with IAM Identity Center Integration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Data sources for account and region information
/// const example = aws.ssoadmin.getInstances({});
/// const current = aws.getCallerIdentity({});
/// const currentGetRegion = aws.getRegion({});
/// // IAM Policy for OpenSearch Application Identity Center Integration
/// const opensearchIdentityCenter = new aws.iam.Policy("opensearch_identity_center", {
///     name: "opensearch-identity-center-policy",
///     description: "Policy for OpenSearch Application Identity Center integration",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [
///             {
///                 Sid: "IdentityStoreOpenSearchDomainConnectivity",
///                 Effect: "Allow",
///                 Action: [
///                     "identitystore:DescribeUser",
///                     "identitystore:ListGroupMembershipsForMember",
///                     "identitystore:DescribeGroup",
///                 ],
///                 Resource: "*",
///                 Condition: {
///                     "ForAnyValue:StringEquals": {
///                         "aws:CalledViaLast": "es.amazonaws.com",
///                     },
///                 },
///             },
///             {
///                 Sid: "OpenSearchDomain",
///                 Effect: "Allow",
///                 Action: ["es:ESHttp*"],
///                 Resource: "*",
///             },
///             {
///                 Sid: "OpenSearchServerless",
///                 Effect: "Allow",
///                 Action: ["aoss:APIAccessAll"],
///                 Resource: "*",
///             },
///         ],
///     }),
/// });
/// // IAM Role for OpenSearch Application
/// const opensearchApplication = new aws.iam.Role("opensearch_application", {
///     name: "opensearch-application-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [
///             {
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "application.opensearchservice.amazonaws.com",
///                 },
///                 Action: "sts:AssumeRole",
///             },
///             {
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "application.opensearchservice.amazonaws.com",
///                 },
///                 Action: "sts:SetContext",
///                 Condition: {
///                     "ForAllValues:ArnEquals": {
///                         "sts:RequestContextProviders": Promise.all([current, currentGetRegion]).then(([current, currentGetRegion]) => `arn:aws:iam::${current.accountId}:oidc-provider/portal.sso.${currentGetRegion.id}.amazonaws.com/apl/*`),
///                     },
///                 },
///             },
///         ],
///     }),
/// });
/// // Attach policy to role
/// const opensearchIdentityCenterRolePolicyAttachment = new aws.iam.RolePolicyAttachment("opensearch_identity_center", {
///     role: opensearchApplication.name,
///     policyArn: opensearchIdentityCenter.arn,
/// });
/// const exampleApplication = new aws.opensearch.Application("example", {
///     name: "my-opensearch-app",
///     iamIdentityCenterOptions: {
///         enabled: true,
///         iamIdentityCenterInstanceArn: example.then(example => example.arns?.[0]),
///         iamRoleForIdentityCenterApplicationArn: opensearchApplication.arn,
///     },
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// # Data sources for account and region information
/// example = aws.ssoadmin.get_instances()
/// current = aws.get_caller_identity()
/// current_get_region = aws.get_region()
/// # IAM Policy for OpenSearch Application Identity Center Integration
/// opensearch_identity_center = aws.iam.Policy("opensearch_identity_center",
///     name="opensearch-identity-center-policy",
///     description="Policy for OpenSearch Application Identity Center integration",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [
///             {
///                 "Sid": "IdentityStoreOpenSearchDomainConnectivity",
///                 "Effect": "Allow",
///                 "Action": [
///                     "identitystore:DescribeUser",
///                     "identitystore:ListGroupMembershipsForMember",
///                     "identitystore:DescribeGroup",
///                 ],
///                 "Resource": "*",
///                 "Condition": {
///                     "ForAnyValue:StringEquals": {
///                         "aws:CalledViaLast": "es.amazonaws.com",
///                     },
///                 },
///             },
///             {
///                 "Sid": "OpenSearchDomain",
///                 "Effect": "Allow",
///                 "Action": ["es:ESHttp*"],
///                 "Resource": "*",
///             },
///             {
///                 "Sid": "OpenSearchServerless",
///                 "Effect": "Allow",
///                 "Action": ["aoss:APIAccessAll"],
///                 "Resource": "*",
///             },
///         ],
///     }))
/// # IAM Role for OpenSearch Application
/// opensearch_application = aws.iam.Role("opensearch_application",
///     name="opensearch-application-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [
///             {
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "application.opensearchservice.amazonaws.com",
///                 },
///                 "Action": "sts:AssumeRole",
///             },
///             {
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "application.opensearchservice.amazonaws.com",
///                 },
///                 "Action": "sts:SetContext",
///                 "Condition": {
///                     "ForAllValues:ArnEquals": {
///                         "sts:RequestContextProviders": f"arn:aws:iam::{current.account_id}:oidc-provider/portal.sso.{current_get_region.id}.amazonaws.com/apl/*",
///                     },
///                 },
///             },
///         ],
///     }))
/// # Attach policy to role
/// opensearch_identity_center_role_policy_attachment = aws.iam.RolePolicyAttachment("opensearch_identity_center",
///     role=opensearch_application.name,
///     policy_arn=opensearch_identity_center.arn)
/// example_application = aws.opensearch.Application("example",
///     name="my-opensearch-app",
///     iam_identity_center_options={
///         "enabled": True,
///         "iam_identity_center_instance_arn": example.arns[0],
///         "iam_role_for_identity_center_application_arn": opensearch_application.arn,
///     },
///     tags={
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Data sources for account and region information
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     // IAM Policy for OpenSearch Application Identity Center Integration
///     var opensearchIdentityCenter = new Aws.Iam.Policy("opensearch_identity_center", new()
///     {
///         Name = "opensearch-identity-center-policy",
///         Description = "Policy for OpenSearch Application Identity Center integration",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "IdentityStoreOpenSearchDomainConnectivity",
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "identitystore:DescribeUser",
///                         "identitystore:ListGroupMembershipsForMember",
///                         "identitystore:DescribeGroup",
///                     },
///                     ["Resource"] = "*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["ForAnyValue:StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:CalledViaLast"] = "es.amazonaws.com",
///                         },
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "OpenSearchDomain",
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "es:ESHttp*",
///                     },
///                     ["Resource"] = "*",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "OpenSearchServerless",
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "aoss:APIAccessAll",
///                     },
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     // IAM Role for OpenSearch Application
///     var opensearchApplication = new Aws.Iam.Role("opensearch_application", new()
///     {
///         Name = "opensearch-application-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "application.opensearchservice.amazonaws.com",
///                     },
///                     ["Action"] = "sts:AssumeRole",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "application.opensearchservice.amazonaws.com",
///                     },
///                     ["Action"] = "sts:SetContext",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["ForAllValues:ArnEquals"] = new Dictionary<string, object?>
///                         {
///                             ["sts:RequestContextProviders"] = Output.Tuple(current, currentGetRegion).Apply(values =>
///                             {
///                                 var current = values.Item1;
///                                 var currentGetRegion = values.Item2;
///                                 return $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:oidc-provider/portal.sso.{currentGetRegion.Apply(getRegionResult => getRegionResult.Id)}.amazonaws.com/apl/*";
///                             }),
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
///     // Attach policy to role
///     var opensearchIdentityCenterRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("opensearch_identity_center", new()
///     {
///         Role = opensearchApplication.Name,
///         PolicyArn = opensearchIdentityCenter.Arn,
///     });
///
///     var exampleApplication = new Aws.OpenSearch.Application("example", new()
///     {
///         Name = "my-opensearch-app",
///         IamIdentityCenterOptions = new Aws.OpenSearch.Inputs.ApplicationIamIdentityCenterOptionsArgs
///         {
///             Enabled = true,
///             IamIdentityCenterInstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///             IamRoleForIdentityCenterApplicationArn = opensearchApplication.Arn,
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Data sources for account and region information
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "IdentityStoreOpenSearchDomainConnectivity",
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"identitystore:DescribeUser",
/// 						"identitystore:ListGroupMembershipsForMember",
/// 						"identitystore:DescribeGroup",
/// 					},
/// 					"Resource": "*",
/// 					"Condition": map[string]interface{}{
/// 						"ForAnyValue:StringEquals": map[string]interface{}{
/// 							"aws:CalledViaLast": "es.amazonaws.com",
/// 						},
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"Sid":    "OpenSearchDomain",
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"es:ESHttp*",
/// 					},
/// 					"Resource": "*",
/// 				},
/// 				map[string]interface{}{
/// 					"Sid":    "OpenSearchServerless",
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"aoss:APIAccessAll",
/// 					},
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		// IAM Policy for OpenSearch Application Identity Center Integration
/// 		opensearchIdentityCenter, err := iam.NewPolicy(ctx, "opensearch_identity_center", &iam.PolicyArgs{
/// 			Name:        pulumi.String("opensearch-identity-center-policy"),
/// 			Description: pulumi.String("Policy for OpenSearch Application Identity Center integration"),
/// 			Policy:      pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "application.opensearchservice.amazonaws.com",
/// 					},
/// 					"Action": "sts:AssumeRole",
/// 				},
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "application.opensearchservice.amazonaws.com",
/// 					},
/// 					"Action": "sts:SetContext",
/// 					"Condition": map[string]interface{}{
/// 						"ForAllValues:ArnEquals": map[string]interface{}{
/// 							"sts:RequestContextProviders": fmt.Sprintf("arn:aws:iam::%v:oidc-provider/portal.sso.%v.amazonaws.com/apl/*", current.AccountId, currentGetRegion.Id),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		// IAM Role for OpenSearch Application
/// 		opensearchApplication, err := iam.NewRole(ctx, "opensearch_application", &iam.RoleArgs{
/// 			Name:             pulumi.String("opensearch-application-role"),
/// 			AssumeRolePolicy: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Attach policy to role
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "opensearch_identity_center", &iam.RolePolicyAttachmentArgs{
/// 			Role:      opensearchApplication.Name,
/// 			PolicyArn: opensearchIdentityCenter.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewApplication(ctx, "example", &opensearch.ApplicationArgs{
/// 			Name: pulumi.String("my-opensearch-app"),
/// 			IamIdentityCenterOptions: &opensearch.ApplicationIamIdentityCenterOptionsArgs{
/// 				Enabled:                                pulumi.Bool(true),
/// 				IamIdentityCenterInstanceArn:           pulumi.String(example.Arns[0]),
/// 				IamRoleForIdentityCenterApplicationArn: opensearchApplication.Arn,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.opensearch.Application;
/// import com.pulumi.aws.opensearch.ApplicationArgs;
/// import com.pulumi.aws.opensearch.inputs.ApplicationIamIdentityCenterOptionsArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         // Data sources for account and region information
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         // IAM Policy for OpenSearch Application Identity Center Integration
///         var opensearchIdentityCenter = new Policy("opensearchIdentityCenter", PolicyArgs.builder()
///             .name("opensearch-identity-center-policy")
///             .description("Policy for OpenSearch Application Identity Center integration")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Sid", "IdentityStoreOpenSearchDomainConnectivity"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", jsonArray(
///                                 "identitystore:DescribeUser",
///                                 "identitystore:ListGroupMembershipsForMember",
///                                 "identitystore:DescribeGroup"
///                             )),
///                             jsonProperty("Resource", "*"),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("ForAnyValue:StringEquals", jsonObject(
///                                     jsonProperty("aws:CalledViaLast", "es.amazonaws.com")
///                                 ))
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "OpenSearchDomain"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", jsonArray("es:ESHttp*")),
///                             jsonProperty("Resource", "*")
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "OpenSearchServerless"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", jsonArray("aoss:APIAccessAll")),
///                             jsonProperty("Resource", "*")
///                         )
///                     ))
///                 )))
///             .build());
///
///         // IAM Role for OpenSearch Application
///         var opensearchApplication = new Role("opensearchApplication", RoleArgs.builder()
///             .name("opensearch-application-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "application.opensearchservice.amazonaws.com")
///                             )),
///                             jsonProperty("Action", "sts:AssumeRole")
///                         ),
///                         jsonObject(
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "application.opensearchservice.amazonaws.com")
///                             )),
///                             jsonProperty("Action", "sts:SetContext"),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("ForAllValues:ArnEquals", jsonObject(
///                                     jsonProperty("sts:RequestContextProviders", String.format("arn:aws:iam::%s:oidc-provider/portal.sso.%s.amazonaws.com/apl/*", current.accountId(),currentGetRegion.id()))
///                                 ))
///                             ))
///                         )
///                     ))
///                 )))
///             .build());
///
///         // Attach policy to role
///         var opensearchIdentityCenterRolePolicyAttachment = new RolePolicyAttachment("opensearchIdentityCenterRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(opensearchApplication.name())
///             .policyArn(opensearchIdentityCenter.arn())
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("my-opensearch-app")
///             .iamIdentityCenterOptions(ApplicationIamIdentityCenterOptionsArgs.builder()
///                 .enabled(true)
///                 .iamIdentityCenterInstanceArn(example.arns()[0])
///                 .iamRoleForIdentityCenterApplicationArn(opensearchApplication.arn())
///                 .build())
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # IAM Policy for OpenSearch Application Identity Center Integration
///   opensearchIdentityCenter:
///     type: aws:iam:Policy
///     name: opensearch_identity_center
///     properties:
///       name: opensearch-identity-center-policy
///       description: Policy for OpenSearch Application Identity Center integration
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: IdentityStoreOpenSearchDomainConnectivity
///               Effect: Allow
///               Action:
///                 - identitystore:DescribeUser
///                 - identitystore:ListGroupMembershipsForMember
///                 - identitystore:DescribeGroup
///               Resource: '*'
///               Condition:
///                 ForAnyValue:StringEquals:
///                   aws:CalledViaLast: es.amazonaws.com
///             - Sid: OpenSearchDomain
///               Effect: Allow
///               Action:
///                 - es:ESHttp*
///               Resource: '*'
///             - Sid: OpenSearchServerless
///               Effect: Allow
///               Action:
///                 - aoss:APIAccessAll
///               Resource: '*'
///   # IAM Role for OpenSearch Application
///   opensearchApplication:
///     type: aws:iam:Role
///     name: opensearch_application
///     properties:
///       name: opensearch-application-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal:
///                 Service: application.opensearchservice.amazonaws.com
///               Action: sts:AssumeRole
///             - Effect: Allow
///               Principal:
///                 Service: application.opensearchservice.amazonaws.com
///               Action: sts:SetContext
///               Condition:
///                 ForAllValues:ArnEquals:
///                   sts:RequestContextProviders: arn:aws:iam::${current.accountId}:oidc-provider/portal.sso.${currentGetRegion.id}.amazonaws.com/apl/*
///   # Attach policy to role
///   opensearchIdentityCenterRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: opensearch_identity_center
///     properties:
///       role: ${opensearchApplication.name}
///       policyArn: ${opensearchIdentityCenter.arn}
///   exampleApplication:
///     type: aws:opensearch:Application
///     name: example
///     properties:
///       name: my-opensearch-app
///       iamIdentityCenterOptions:
///         enabled: true
///         iamIdentityCenterInstanceArn: ${example.arns[0]}
///         iamRoleForIdentityCenterApplicationArn: ${opensearchApplication.arn}
///       tags:
///         Environment: production
/// variables:
///   # Data sources for account and region information
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Additional Information
///
/// For more information about OpenSearch Applications, see the [AWS OpenSearch Service Developer Guide](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html).
///
/// For information about configuring IAM Identity Center with OpenSearch Applications, see [Using AWS IAM Identity Center authentication](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application-getting-started.html#create-application).
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch applications using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/application:Application example app-1234567890abcdef0
/// ```
class Application extends pulumi.CustomResource {
  /// Configuration block(s) for OpenSearch application settings. See App Config below.
  late final pulumi.Output<List<ApplicationAppConfig>?> appConfigs;

  /// The Amazon Resource Name (ARN) of the OpenSearch application.
  late final pulumi.Output<String> arn;

  /// Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  late final pulumi.Output<List<ApplicationDataSource>?> dataSources;

  /// Endpoint URL of the OpenSearch application.
  late final pulumi.Output<String> endpoint;

  /// Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  late final pulumi.Output<ApplicationIamIdentityCenterOptions?>
      iamIdentityCenterOptions;

  /// ARN of the KMS key used to encrypt the application's data at rest.
  late final pulumi.Output<String?> kmsKeyArn;

  /// The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ApplicationTimeouts?> timeouts;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_opensearch_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appConfigs = registerOutput<List<ApplicationAppConfig>?>('appConfigs');
    this.arn = registerOutput<String>('arn');
    this.dataSources =
        registerOutput<List<ApplicationDataSource>?>('dataSources');
    this.endpoint = registerOutput<String>('endpoint');
    this.iamIdentityCenterOptions =
        registerOutput<ApplicationIamIdentityCenterOptions?>(
            'iamIdentityCenterOptions');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ApplicationTimeouts?>('timeouts');
  }
}
