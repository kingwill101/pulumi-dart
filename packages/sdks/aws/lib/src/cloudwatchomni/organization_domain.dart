import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_domain_args.dart';
import 'organization_domain_identity_provider_configuration.dart';
import 'organization_domain_state.dart';

/// Manages an Amazon CloudWatch Omni organization domain.
///
/// An organization domain is a CloudWatch Omni domain shared by every account in an AWS Organizations organization. An organization can have one organization domain. While it exists, member accounts create their spaces in the organization domain instead of in an account domain.
///
/// &gt; **NOTE:** This resource must be managed from the organization's management account, in the domain's home Region. Trusted access for the `observabilityadmin.amazonaws.com` service principal must be enabled in AWS Organizations, and the management account must not have its own CloudWatch Omni domain.
///
/// &gt; **NOTE:** An organization domain cannot be deleted while any account in the organization has a space in it.
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
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Principal: {
///                 Service: "cloudwatch.amazonaws.com",
///             },
///             Action: [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             Condition: {
///                 StringEquals: {
///                     "aws:SourceAccount": current.then(current => current.accountId),
///                 },
///             },
///         }],
///     }),
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     role: example.name,
///     policyArn: currentGetPartition.then(currentGetPartition => `arn:${currentGetPartition.partition}:iam::aws:policy/CloudWatchOmniDomainAccessPolicy`),
/// });
/// const exampleOrganizationDomain = new aws.cloudwatchomni.OrganizationDomain("example", {
///     name: "example",
///     identityProviders: ["IAM"],
///     domainAccessRoleArn: example.arn,
/// }, {
///     dependsOn: [exampleRolePolicyAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// example = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "cloudwatch.amazonaws.com",
///             },
///             "Action": [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             "Condition": {
///                 "StringEquals": {
///                     "aws:SourceAccount": current.account_id,
///                 },
///             },
///         }],
///     }))
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     role=example.name,
///     policy_arn=f"arn:{current_get_partition.partition}:iam::aws:policy/CloudWatchOmniDomainAccessPolicy")
/// example_organization_domain = aws.cloudwatchomni.OrganizationDomain("example",
///     name="example",
///     identity_providers=["IAM"],
///     domain_access_role_arn=example.arn,
///     opts = pulumi.ResourceOptions(depends_on=[example_role_policy_attachment]))
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
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
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
///                         ["Service"] = "cloudwatch.amazonaws.com",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:TagSession",
///                     },
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceAccount"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = example.Name,
///         PolicyArn = $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::aws:policy/CloudWatchOmniDomainAccessPolicy",
///     });
///
///     var exampleOrganizationDomain = new Aws.CloudWatchOmni.OrganizationDomain("example", new()
///     {
///         Name = "example",
///         IdentityProviders = new[]
///         {
///             "IAM",
///         },
///         DomainAccessRoleArn = example.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleRolePolicyAttachment,
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
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "cloudwatch.amazonaws.com",
/// 					},
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 					},
/// 					"Condition": map[string]map[string]interface{}{
/// 						"StringEquals": map[string]interface{}{
/// 							"aws:SourceAccount": current.AccountId,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: json0,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRolePolicyAttachment, err := iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			Role:      example.Name,
/// 			PolicyArn: pulumi.Sprintf("arn:%v:iam::aws:policy/CloudWatchOmniDomainAccessPolicy", currentGetPartition.Partition),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatchomni.NewOrganizationDomain(ctx, "example", &cloudwatchomni.OrganizationDomainArgs{
/// 			Name: pulumi.String("example"),
/// 			IdentityProviders: pulumi.StringArray{
/// 				pulumi.String("IAM"),
/// 			},
/// 			DomainAccessRoleArn: example.Arn,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleRolePolicyAttachment,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_caller_identity" "current" {
/// }
/// data "aws_partition" "currentGetPartition" {
/// }
///
/// resource "aws_iam_role" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "example"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "cloudwatch.amazonaws.com"
///       }
///       "Action" = ["sts:AssumeRole", "sts:TagSession"]
///       "Condition" = {
///         "StringEquals" = {
///           "aws:SourceAccount" = data.aws_caller_identity.current.account_id
///         }
///       }
///     }]
///   })
/// }
/// resource "aws_iam_role_policy_attachment" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   role       = aws_iam_role.example.name
///   policy_arn ="arn:${data.aws_partition.currentGetPartition.partition}:iam::aws:policy/CloudWatchOmniDomainAccessPolicy"
/// }
/// resource "aws_cloudwatchomni_organization_domain" "example" {
///   depends_on = [aws_iam_role_policy_attachment.example]
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                   = "example"
///   identity_providers     = ["IAM"]
///   domain_access_role_arn = aws_iam_role.example.arn
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
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.cloudwatchomni.OrganizationDomain;
/// import com.pulumi.aws.cloudwatchomni.OrganizationDomainArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "cloudwatch.amazonaws.com")
///                         )),
///                         jsonProperty("Action", jsonArray(
///                             "sts:AssumeRole",
///                             "sts:TagSession"
///                         )),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringEquals", jsonObject(
///                                 jsonProperty("aws:SourceAccount", current.accountId())
///                             ))
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(example.name())
///             .policyArn(String.format("arn:%s:iam::aws:policy/CloudWatchOmniDomainAccessPolicy", currentGetPartition.partition()))
///             .build());
///
///         var exampleOrganizationDomain = new OrganizationDomain("exampleOrganizationDomain", OrganizationDomainArgs.builder()
///             .name("example")
///             .identityProviders("IAM")
///             .domainAccessRoleArn(example.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleRolePolicyAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal:
///                 Service: cloudwatch.amazonaws.com
///               Action:
///                 - sts:AssumeRole
///                 - sts:TagSession
///               Condition:
///                 StringEquals:
///                   aws:SourceAccount: ${current.accountId}
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       role: ${example.name}
///       policyArn: arn:${currentGetPartition.partition}:iam::aws:policy/CloudWatchOmniDomainAccessPolicy
///   exampleOrganizationDomain:
///     type: aws:cloudwatchomni:OrganizationDomain
///     name: example
///     properties:
///       name: example
///       identityProviders:
///         - IAM
///       domainAccessRoleArn: ${example.arn}
///     options:
///       dependsOn:
///         - ${exampleRolePolicyAttachment}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ### With IAM Identity Center
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleOrganizationDomain = new aws.cloudwatchomni.OrganizationDomain("example", {
///     identityProviderConfiguration: {
///         identityCenterConfiguration: {
///             identityCenterInstanceArn: example.then(example => example.arns?.[0]),
///         },
///     },
///     name: "example",
///     identityProviders: [
///         "IAM",
///         "IDC",
///     ],
///     domainAccessRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_organization_domain = aws.cloudwatchomni.OrganizationDomain("example",
///     identity_provider_configuration={
///         "identity_center_configuration": {
///             "identity_center_instance_arn": example.arns[0],
///         },
///     },
///     name="example",
///     identity_providers=[
///         "IAM",
///         "IDC",
///     ],
///     domain_access_role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleOrganizationDomain = new Aws.CloudWatchOmni.OrganizationDomain("example", new()
///     {
///         IdentityProviderConfiguration = new Aws.CloudWatchOmni.Inputs.OrganizationDomainIdentityProviderConfigurationArgs
///         {
///             IdentityCenterConfiguration = new Aws.CloudWatchOmni.Inputs.OrganizationDomainIdentityProviderConfigurationIdentityCenterConfigurationArgs
///             {
///                 IdentityCenterInstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///             },
///         },
///         Name = "example",
///         IdentityProviders = new[]
///         {
///             "IAM",
///             "IDC",
///         },
///         DomainAccessRoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatchomni.NewOrganizationDomain(ctx, "example", &cloudwatchomni.OrganizationDomainArgs{
/// 			IdentityProviderConfiguration: &cloudwatchomni.OrganizationDomainIdentityProviderConfigurationArgs{
/// 				IdentityCenterConfiguration: &cloudwatchomni.OrganizationDomainIdentityProviderConfigurationIdentityCenterConfigurationArgs{
/// 					IdentityCenterInstanceArn: pulumi.String(example.Arns[0]),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 			IdentityProviders: pulumi.StringArray{
/// 				pulumi.String("IAM"),
/// 				pulumi.String("IDC"),
/// 			},
/// 			DomainAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ssoadmin_instances" "example" {
/// }
///
/// resource "aws_cloudwatchomni_organization_domain" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   identity_provider_configuration {
///     identity_center_configuration {
///       identity_center_instance_arn = data.aws_ssoadmin_instances.example.arns[0]
///     }
///   }
///   name                   = "example"
///   identity_providers     = ["IAM", "IDC"]
///   domain_access_role_arn = exampleAwsIamRole.arn
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
/// import com.pulumi.aws.cloudwatchomni.OrganizationDomain;
/// import com.pulumi.aws.cloudwatchomni.OrganizationDomainArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.OrganizationDomainIdentityProviderConfigurationArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.OrganizationDomainIdentityProviderConfigurationIdentityCenterConfigurationArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var exampleOrganizationDomain = new OrganizationDomain("exampleOrganizationDomain", OrganizationDomainArgs.builder()
///             .identityProviderConfiguration(OrganizationDomainIdentityProviderConfigurationArgs.builder()
///                 .identityCenterConfiguration(OrganizationDomainIdentityProviderConfigurationIdentityCenterConfigurationArgs.builder()
///                     .identityCenterInstanceArn(example.arns()[0])
///                     .build())
///                 .build())
///             .name("example")
///             .identityProviders(
///                 "IAM",
///                 "IDC")
///             .domainAccessRoleArn(exampleAwsIamRole.get("arn"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleOrganizationDomain:
///     type: aws:cloudwatchomni:OrganizationDomain
///     name: example
///     properties:
///       identityProviderConfiguration:
///         identityCenterConfiguration:
///           identityCenterInstanceArn: ${example.arns[0]}
///       name: example
///       identityProviders:
///         - IAM
///         - IDC
///       domainAccessRoleArn: ${exampleAwsIamRole.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
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
/// * `domainId` (String) Domain ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a CloudWatch Omni Organization Domain by domain ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatchomni/organizationDomain:OrganizationDomain example d-0123456789abcdefghijklmno
/// ```
class OrganizationDomain extends pulumi.CustomResource {
  /// ARN of the organization domain.
  late final pulumi.Output<String> arn;
  /// Additional endpoint URLs derived from the domain name.
  late final pulumi.Output<List<String>> customEndpointUrls;
  /// ARN of the IAM role that CloudWatch Omni assumes to access the organization. The role must be in the management account, trust `cloudwatch.amazonaws.com` for `sts:AssumeRole` and `sts:TagSession`, and have the `CloudWatchOmniDomainAccessPolicy` AWS managed policy attached.
  late final pulumi.Output<String> domainAccessRoleArn;
  /// HTTPS endpoint URL for accessing the domain.
  late final pulumi.Output<String> domainEndpointUrl;
  /// Unique identifier of the organization domain.
  late final pulumi.Output<String> domainId;
  /// ARN of the IAM Identity Center application. Only set when `identityProviders` includes `IDC`.
  late final pulumi.Output<String> identityCenterApplicationArn;
  /// Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  late final pulumi.Output<OrganizationDomainIdentityProviderConfiguration?> identityProviderConfiguration;
  /// Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  late final pulumi.Output<List<String>> identityProviders;
  /// Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// ID of the organization that the domain belongs to.
  late final pulumi.Output<String> organizationId;
  /// ID of the management account that owns the domain.
  late final pulumi.Output<String> ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the domain.
  late final pulumi.Output<String> status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [OrganizationDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationDomain]. {@macro pulumi_cloudwatchomni_organization_domain_organization_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationDomain(
    String name, {
    OrganizationDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/organizationDomain:OrganizationDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    customEndpointUrls = registerOutput<List<String>>('customEndpointUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainAccessRoleArn = registerOutput<String>('domainAccessRoleArn');
    domainEndpointUrl = registerOutput<String>('domainEndpointUrl');
    domainId = registerOutput<String>('domainId');
    identityCenterApplicationArn = registerOutput<String>('identityCenterApplicationArn');
    identityProviderConfiguration = registerOutput<OrganizationDomainIdentityProviderConfiguration?>('identityProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationDomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProviders = registerOutput<List<String>>('identityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [OrganizationDomain] resource's state with the given [name] and [id].
  static OrganizationDomain get(
    String name,
    pulumi.Input<String> id, {
    OrganizationDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/organizationDomain:OrganizationDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    customEndpointUrls = registerOutput<List<String>>('customEndpointUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainAccessRoleArn = registerOutput<String>('domainAccessRoleArn');
    domainEndpointUrl = registerOutput<String>('domainEndpointUrl');
    domainId = registerOutput<String>('domainId');
    identityCenterApplicationArn = registerOutput<String>('identityCenterApplicationArn');
    identityProviderConfiguration = registerOutput<OrganizationDomainIdentityProviderConfiguration?>('identityProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationDomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProviders = registerOutput<List<String>>('identityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [OrganizationDomain] resource.
  OrganizationDomain.reference(String urn)
    : super(
        'aws:cloudwatchomni/organizationDomain:OrganizationDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    customEndpointUrls = registerOutput<List<String>>('customEndpointUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainAccessRoleArn = registerOutput<String>('domainAccessRoleArn');
    domainEndpointUrl = registerOutput<String>('domainEndpointUrl');
    domainId = registerOutput<String>('domainId');
    identityCenterApplicationArn = registerOutput<String>('identityCenterApplicationArn');
    identityProviderConfiguration = registerOutput<OrganizationDomainIdentityProviderConfiguration?>('identityProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationDomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProviders = registerOutput<List<String>>('identityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
