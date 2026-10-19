import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_args.dart';
import 'space_encryption_configuration.dart';
import 'space_state.dart';

/// Manages a CloudWatch Omni Space. A space is the container that holds your observability data within a CloudWatch Omni domain.
///
/// &gt; **NOTE:** CloudWatch Omni allows only **one space per AWS account per region**. Creating a second space in the same region returns `ConflictException`. A space in a different region is permitted, and a space does not have to be in the same region as its domain.
///
/// &gt; **NOTE:** CloudWatch Omni is not available in every region. In unsupported regions the API returns `AccessDeniedException`.
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
/// const example = new aws.iam.Role("example", {
///     name: "cloudwatch-omni-data-access",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "cloudwatch.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleDomain = new aws.cloudwatchomni.Domain("example", {
///     name: "example",
///     identityProviders: ["IAM"],
/// });
/// const exampleSpace = new aws.cloudwatchomni.Space("example", {
///     name: "example",
///     domainId: exampleDomain.domainId,
///     dataAccessRoleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     name="cloudwatch-omni-data-access",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "cloudwatch.amazonaws.com",
///             },
///         }],
///     }))
/// example_domain = aws.cloudwatchomni.Domain("example",
///     name="example",
///     identity_providers=["IAM"])
/// example_space = aws.cloudwatchomni.Space("example",
///     name="example",
///     domain_id=example_domain.domain_id,
///     data_access_role_arn=example.arn)
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
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "cloudwatch-omni-data-access",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "cloudwatch.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleDomain = new Aws.CloudWatchOmni.Domain("example", new()
///     {
///         Name = "example",
///         IdentityProviders = new[]
///         {
///             "IAM",
///         },
///     });
///
///     var exampleSpace = new Aws.CloudWatchOmni.Space("example", new()
///     {
///         Name = "example",
///         DomainId = exampleDomain.DomainId,
///         DataAccessRoleArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "cloudwatch.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("cloudwatch-omni-data-access"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDomain, err := cloudwatchomni.NewDomain(ctx, "example", &cloudwatchomni.DomainArgs{
/// 			Name: pulumi.String("example"),
/// 			IdentityProviders: pulumi.StringArray{
/// 				pulumi.String("IAM"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatchomni.NewSpace(ctx, "example", &cloudwatchomni.SpaceArgs{
/// 			Name:              pulumi.String("example"),
/// 			DomainId:          exampleDomain.DomainId,
/// 			DataAccessRoleArn: example.Arn,
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
/// resource "aws_iam_role" "example" {
///   name = "cloudwatch-omni-data-access"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "cloudwatch.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_cloudwatchomni_domain" "example" {
///   name               = "example"
///   identity_providers = ["IAM"]
/// }
/// resource "aws_cloudwatchomni_space" "example" {
///   name                 = "example"
///   domain_id            = aws_cloudwatchomni_domain.example.domain_id
///   data_access_role_arn = aws_iam_role.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.cloudwatchomni.Domain;
/// import com.pulumi.aws.cloudwatchomni.DomainArgs;
/// import com.pulumi.aws.cloudwatchomni.Space;
/// import com.pulumi.aws.cloudwatchomni.SpaceArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new Role("example", RoleArgs.builder()
///             .name("cloudwatch-omni-data-access")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "cloudwatch.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .name("example")
///             .identityProviders("IAM")
///             .build());
///
///         var exampleSpace = new Space("exampleSpace", SpaceArgs.builder()
///             .name("example")
///             .domainId(exampleDomain.domainId())
///             .dataAccessRoleArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: cloudwatch-omni-data-access
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: cloudwatch.amazonaws.com
///   exampleDomain:
///     type: aws:cloudwatchomni:Domain
///     name: example
///     properties:
///       name: example
///       identityProviders:
///         - IAM
///   exampleSpace:
///     type: aws:cloudwatchomni:Space
///     name: example
///     properties:
///       name: example
///       domainId: ${exampleDomain.domainId}
///       dataAccessRoleArn: ${example.arn}
/// ```
///
///
/// ### AgentCore Online Evaluation
///
/// Supply `agentCoreEvaluationRoleArn` to let the space run AgentCore online evaluation.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatchomni.Space("example", {
///     name: "example",
///     domainId: exampleAwsCloudwatchomniDomain.domainId,
///     dataAccessRoleArn: dataAccess.arn,
///     agentCoreEvaluationRoleArn: agentCore.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.Space("example",
///     name="example",
///     domain_id=example_aws_cloudwatchomni_domain["domainId"],
///     data_access_role_arn=data_access["arn"],
///     agent_core_evaluation_role_arn=agent_core["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatchOmni.Space("example", new()
///     {
///         Name = "example",
///         DomainId = exampleAwsCloudwatchomniDomain.DomainId,
///         DataAccessRoleArn = dataAccess.Arn,
///         AgentCoreEvaluationRoleArn = agentCore.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatchomni.NewSpace(ctx, "example", &cloudwatchomni.SpaceArgs{
/// 			Name:                       pulumi.String("example"),
/// 			DomainId:                   pulumi.Any(exampleAwsCloudwatchomniDomain.DomainId),
/// 			DataAccessRoleArn:          pulumi.Any(dataAccess.Arn),
/// 			AgentCoreEvaluationRoleArn: pulumi.Any(agentCore.Arn),
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
/// resource "aws_cloudwatchomni_space" "example" {
///   name                           = "example"
///   domain_id                      = exampleAwsCloudwatchomniDomain.domainId
///   data_access_role_arn           = dataAccess.arn
///   agent_core_evaluation_role_arn = agentCore.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.Space;
/// import com.pulumi.aws.cloudwatchomni.SpaceArgs;
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
///         var example = new Space("example", SpaceArgs.builder()
///             .name("example")
///             .domainId(exampleAwsCloudwatchomniDomain.domainId())
///             .dataAccessRoleArn(dataAccess.arn())
///             .agentCoreEvaluationRoleArn(agentCore.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:Space
///     properties:
///       name: example
///       domainId: ${exampleAwsCloudwatchomniDomain.domainId}
///       dataAccessRoleArn: ${dataAccess.arn}
///       agentCoreEvaluationRoleArn: ${agentCore.arn}
/// ```
///
///
/// ### Customer Managed Encryption
///
/// Omitting `encryptionConfiguration` leaves the space encrypted with an AWS owned key. To use a customer managed key, the key policy must grant the `cloudwatch.amazonaws.com` service principal permission to use it, otherwise `CreateSpace` fails with `AccessDeniedException`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
///     description: "CloudWatch Omni Space encryption",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [
///             {
///                 Sid: "EnableIAMUserPermissions",
///                 Effect: "Allow",
///                 Principal: {
///                     AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
///                 },
///                 Action: "kms:*",
///                 Resource: "*",
///             },
///             {
///                 Sid: "AllowCloudWatchOmni",
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "cloudwatch.amazonaws.com",
///                 },
///                 Action: [
///                     "kms:Decrypt",
///                     "kms:DescribeKey",
///                     "kms:Encrypt",
///                     "kms:GenerateDataKey*",
///                     "kms:ReEncrypt*",
///                 ],
///                 Resource: "*",
///             },
///         ],
///     }),
/// });
/// const exampleSpace = new aws.cloudwatchomni.Space("example", {
///     encryptionConfiguration: {
///         encryptionStrategy: "CUSTOMER_MANAGED",
///         kmsKeyArn: example.arn,
///     },
///     name: "example",
///     domainId: exampleAwsCloudwatchomniDomain.domainId,
///     dataAccessRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
///     description="CloudWatch Omni Space encryption",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [
///             {
///                 "Sid": "EnableIAMUserPermissions",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "AWS": f"arn:aws:iam::{current.account_id}:root",
///                 },
///                 "Action": "kms:*",
///                 "Resource": "*",
///             },
///             {
///                 "Sid": "AllowCloudWatchOmni",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "cloudwatch.amazonaws.com",
///                 },
///                 "Action": [
///                     "kms:Decrypt",
///                     "kms:DescribeKey",
///                     "kms:Encrypt",
///                     "kms:GenerateDataKey*",
///                     "kms:ReEncrypt*",
///                 ],
///                 "Resource": "*",
///             },
///         ],
///     }))
/// example_space = aws.cloudwatchomni.Space("example",
///     encryption_configuration={
///         "encryption_strategy": "CUSTOMER_MANAGED",
///         "kms_key_arn": example.arn,
///     },
///     name="example",
///     domain_id=example_aws_cloudwatchomni_domain["domainId"],
///     data_access_role_arn=example_aws_iam_role["arn"])
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "CloudWatch Omni Space encryption",
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "EnableIAMUserPermissions",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                     },
///                     ["Action"] = "kms:*",
///                     ["Resource"] = "*",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "AllowCloudWatchOmni",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "cloudwatch.amazonaws.com",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "kms:Decrypt",
///                         "kms:DescribeKey",
///                         "kms:Encrypt",
///                         "kms:GenerateDataKey*",
///                         "kms:ReEncrypt*",
///                     },
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var exampleSpace = new Aws.CloudWatchOmni.Space("example", new()
///     {
///         EncryptionConfiguration = new Aws.CloudWatchOmni.Inputs.SpaceEncryptionConfigurationArgs
///         {
///             EncryptionStrategy = "CUSTOMER_MANAGED",
///             KmsKeyArn = example.Arn,
///         },
///         Name = "example",
///         DomainId = exampleAwsCloudwatchomniDomain.DomainId,
///         DataAccessRoleArn = exampleAwsIamRole.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "EnableIAMUserPermissions",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 					},
/// 					"Action":   "kms:*",
/// 					"Resource": "*",
/// 				},
/// 				map[string]interface{}{
/// 					"Sid":    "AllowCloudWatchOmni",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "cloudwatch.amazonaws.com",
/// 					},
/// 					"Action": []string{
/// 						"kms:Decrypt",
/// 						"kms:DescribeKey",
/// 						"kms:Encrypt",
/// 						"kms:GenerateDataKey*",
/// 						"kms:ReEncrypt*",
/// 					},
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description: pulumi.String("CloudWatch Omni Space encryption"),
/// 			Policy:      json0,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatchomni.NewSpace(ctx, "example", &cloudwatchomni.SpaceArgs{
/// 			EncryptionConfiguration: &cloudwatchomni.SpaceEncryptionConfigurationArgs{
/// 				EncryptionStrategy: pulumi.String("CUSTOMER_MANAGED"),
/// 				KmsKeyArn:          example.Arn,
/// 			},
/// 			Name:              pulumi.String("example"),
/// 			DomainId:          pulumi.Any(exampleAwsCloudwatchomniDomain.DomainId),
/// 			DataAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_kms_key" "example" {
///   description = "CloudWatch Omni Space encryption"
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"    = "EnableIAMUserPermissions"
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:aws:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Action"   = "kms:*"
///       "Resource" = "*"
///       }, {
///       "Sid"    = "AllowCloudWatchOmni"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "cloudwatch.amazonaws.com"
///       }
///       "Action"   = ["kms:Decrypt", "kms:DescribeKey", "kms:Encrypt", "kms:GenerateDataKey*", "kms:ReEncrypt*"]
///       "Resource" = "*"
///     }]
///   })
/// }
/// resource "aws_cloudwatchomni_space" "example" {
///   encryption_configuration = {
///     encryption_strategy = "CUSTOMER_MANAGED"
///     kms_key_arn         = aws_kms_key.example.arn
///   }
///   name                 = "example"
///   domain_id            = exampleAwsCloudwatchomniDomain.domainId
///   data_access_role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.cloudwatchomni.Space;
/// import com.pulumi.aws.cloudwatchomni.SpaceArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.SpaceEncryptionConfigurationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new Key("example", KeyArgs.builder()
///             .description("CloudWatch Omni Space encryption")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Sid", "EnableIAMUserPermissions"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
///                             )),
///                             jsonProperty("Action", "kms:*"),
///                             jsonProperty("Resource", "*")
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "AllowCloudWatchOmni"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "cloudwatch.amazonaws.com")
///                             )),
///                             jsonProperty("Action", jsonArray(
///                                 "kms:Decrypt",
///                                 "kms:DescribeKey",
///                                 "kms:Encrypt",
///                                 "kms:GenerateDataKey*",
///                                 "kms:ReEncrypt*"
///                             )),
///                             jsonProperty("Resource", "*")
///                         )
///                     ))
///                 )))
///             .build());
///
///         var exampleSpace = new Space("exampleSpace", SpaceArgs.builder()
///             .encryptionConfiguration(SpaceEncryptionConfigurationArgs.builder()
///                 .encryptionStrategy("CUSTOMER_MANAGED")
///                 .kmsKeyArn(example.arn())
///                 .build())
///             .name("example")
///             .domainId(exampleAwsCloudwatchomniDomain.domainId())
///             .dataAccessRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: CloudWatch Omni Space encryption
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: EnableIAMUserPermissions
///               Effect: Allow
///               Principal:
///                 AWS: arn:aws:iam::${current.accountId}:root
///               Action: kms:*
///               Resource: '*'
///             - Sid: AllowCloudWatchOmni
///               Effect: Allow
///               Principal:
///                 Service: cloudwatch.amazonaws.com
///               Action:
///                 - kms:Decrypt
///                 - kms:DescribeKey
///                 - kms:Encrypt
///                 - kms:GenerateDataKey*
///                 - kms:ReEncrypt*
///               Resource: '*'
///   exampleSpace:
///     type: aws:cloudwatchomni:Space
///     name: example
///     properties:
///       encryptionConfiguration:
///         encryptionStrategy: CUSTOMER_MANAGED
///         kmsKeyArn: ${example.arn}
///       name: example
///       domainId: ${exampleAwsCloudwatchomniDomain.domainId}
///       dataAccessRoleArn: ${exampleAwsIamRole.arn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `spaceId` (String) Space ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a CloudWatch Omni Space using the `spaceId`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatchomni/space:Space example 12345678-1234-1234-1234-123456789012
/// ```
class Space extends pulumi.CustomResource {
  /// ARN of the IAM role used by AgentCore online evaluation. Changing this forces a new resource.
  late final pulumi.Output<String?> agentCoreEvaluationRoleArn;
  /// ARN of the IAM role CloudWatch Omni assumes to access data. Must be in the same account as the space. Changing this forces a new resource.
  late final pulumi.Output<String> dataAccessRoleArn;
  /// ARN of the domain the space belongs to.
  late final pulumi.Output<String> domainArn;
  /// ID of the CloudWatch Omni domain the space belongs to. Changing this forces a new resource.
  late final pulumi.Output<String> domainId;
  /// Encryption of the space's data at rest. Omit for AWS owned encryption. See below.
  late final pulumi.Output<SpaceEncryptionConfiguration?> encryptionConfiguration;
  /// Name of the space. Must be 3-64 characters of lowercase letters, numbers and hyphens, must begin and end with a letter or number, and cannot contain consecutive hyphens.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the space.
  late final pulumi.Output<String> spaceArn;
  /// Unique ID of the space.
  late final pulumi.Output<String> spaceId;
  /// Status of the space.
  late final pulumi.Output<String> status;

  /// Creates a new [Space].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Space]. {@macro pulumi_cloudwatchomni_space_space_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Space(
    String name, {
    SpaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/space:Space',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    agentCoreEvaluationRoleArn = registerOutput<String?>('agentCoreEvaluationRoleArn');
    dataAccessRoleArn = registerOutput<String>('dataAccessRoleArn');
    domainArn = registerOutput<String>('domainArn');
    domainId = registerOutput<String>('domainId');
    encryptionConfiguration = registerOutput<SpaceEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpaceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    spaceArn = registerOutput<String>('spaceArn');
    spaceId = registerOutput<String>('spaceId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [Space] resource's state with the given [name] and [id].
  static Space get(
    String name,
    pulumi.Input<String> id, {
    SpaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Space._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Space._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/space:Space',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentCoreEvaluationRoleArn = registerOutput<String?>('agentCoreEvaluationRoleArn');
    dataAccessRoleArn = registerOutput<String>('dataAccessRoleArn');
    domainArn = registerOutput<String>('domainArn');
    domainId = registerOutput<String>('domainId');
    encryptionConfiguration = registerOutput<SpaceEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpaceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    spaceArn = registerOutput<String>('spaceArn');
    spaceId = registerOutput<String>('spaceId');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [Space] resource.
  Space.reference(String urn)
    : super(
        'aws:cloudwatchomni/space:Space',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentCoreEvaluationRoleArn = registerOutput<String?>('agentCoreEvaluationRoleArn');
    dataAccessRoleArn = registerOutput<String>('dataAccessRoleArn');
    domainArn = registerOutput<String>('domainArn');
    domainId = registerOutput<String>('domainId');
    encryptionConfiguration = registerOutput<SpaceEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpaceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    spaceArn = registerOutput<String>('spaceArn');
    spaceId = registerOutput<String>('spaceId');
    status = registerOutput<String>('status');
  }
}
