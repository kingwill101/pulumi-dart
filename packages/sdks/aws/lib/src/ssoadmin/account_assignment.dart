import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_assignment_args.dart';
import 'account_assignment_state.dart';

/// Provides a Single Sign-On (SSO) Account Assignment resource
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
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetPermissionSet = example.then(example => aws.ssoadmin.getPermissionSet({
///     instanceArn: example.arns?.[0],
///     name: "AWSReadOnlyAccess",
/// }));
/// const exampleGetGroup = example.then(example => aws.identitystore.getGroup({
///     identityStoreId: example.identityStoreIds?.[0],
///     alternateIdentifier: {
///         uniqueAttribute: {
///             attributePath: "DisplayName",
///             attributeValue: "ExampleGroup",
///         },
///     },
/// }));
/// const exampleAccountAssignment = new aws.ssoadmin.AccountAssignment("example", {
///     instanceArn: example.then(example => example.arns?.[0]),
///     permissionSetArn: exampleGetPermissionSet.then(exampleGetPermissionSet => exampleGetPermissionSet.arn),
///     principalId: exampleGetGroup.then(exampleGetGroup => exampleGetGroup.groupId),
///     principalType: "GROUP",
///     targetId: "123456789012",
///     targetType: "AWS_ACCOUNT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_permission_set = aws.ssoadmin.get_permission_set(instance_arn=example.arns[0],
///     name="AWSReadOnlyAccess")
/// example_get_group = aws.identitystore.get_group(identity_store_id=example.identity_store_ids[0],
///     alternate_identifier={
///         "unique_attribute": {
///             "attribute_path": "DisplayName",
///             "attribute_value": "ExampleGroup",
///         },
///     })
/// example_account_assignment = aws.ssoadmin.AccountAssignment("example",
///     instance_arn=example.arns[0],
///     permission_set_arn=example_get_permission_set.arn,
///     principal_id=example_get_group.group_id,
///     principal_type="GROUP",
///     target_id="123456789012",
///     target_type="AWS_ACCOUNT")
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
///     var exampleGetPermissionSet = Aws.SsoAdmin.GetPermissionSet.Invoke(new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         Name = "AWSReadOnlyAccess",
///     });
///
///     var exampleGetGroup = Aws.IdentityStore.GetGroup.Invoke(new()
///     {
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///         AlternateIdentifier = new Aws.IdentityStore.Inputs.GetGroupAlternateIdentifierInputArgs
///         {
///             UniqueAttribute = new Aws.IdentityStore.Inputs.GetGroupAlternateIdentifierUniqueAttributeInputArgs
///             {
///                 AttributePath = "DisplayName",
///                 AttributeValue = "ExampleGroup",
///             },
///         },
///     });
///
///     var exampleAccountAssignment = new Aws.SsoAdmin.AccountAssignment("example", new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         PermissionSetArn = exampleGetPermissionSet.Apply(getPermissionSetResult => getPermissionSetResult.Arn),
///         PrincipalId = exampleGetGroup.Apply(getGroupResult => getGroupResult.GroupId),
///         PrincipalType = "GROUP",
///         TargetId = "123456789012",
///         TargetType = "AWS_ACCOUNT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
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
/// 		exampleGetPermissionSet, err := ssoadmin.LookupPermissionSet(ctx, &ssoadmin.LookupPermissionSetArgs{
/// 			InstanceArn: example.Arns[0],
/// 			Name:        pulumi.StringRef("AWSReadOnlyAccess"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetGroup, err := identitystore.LookupGroup(ctx, &identitystore.LookupGroupArgs{
/// 			IdentityStoreId: example.IdentityStoreIds[0],
/// 			AlternateIdentifier: identitystore.GetGroupAlternateIdentifier{
/// 				UniqueAttribute: identitystore.GetGroupAlternateIdentifierUniqueAttribute{
/// 					AttributePath:  "DisplayName",
/// 					AttributeValue: "ExampleGroup",
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewAccountAssignment(ctx, "example", &ssoadmin.AccountAssignmentArgs{
/// 			InstanceArn:      pulumi.String(example.Arns[0]),
/// 			PermissionSetArn: pulumi.String(exampleGetPermissionSet.Arn),
/// 			PrincipalId:      pulumi.String(exampleGetGroup.GroupId),
/// 			PrincipalType:    pulumi.String("GROUP"),
/// 			TargetId:         pulumi.String("123456789012"),
/// 			TargetType:       pulumi.String("AWS_ACCOUNT"),
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
/// data "aws_ssoadmin_getinstances" "example" {
/// }
/// data "aws_ssoadmin_getpermissionset" "exampleGetPermissionSet" {
///   instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
///   name         = "AWSReadOnlyAccess"
/// }
/// data "aws_identitystore_getgroup" "exampleGetGroup" {
///   identity_store_id = data.aws_ssoadmin_getinstances.example.identity_store_ids[0]
///   alternate_identifier = {
///     unique_attribute = {
///       attribute_path  = "DisplayName"
///       attribute_value = "ExampleGroup"
///     }
///   }
/// }
///
/// resource "aws_ssoadmin_accountassignment" "example" {
///   instance_arn       = data.aws_ssoadmin_getinstances.example.arns[0]
///   permission_set_arn = data.aws_ssoadmin_getpermissionset.exampleGetPermissionSet.arn
///   principal_id       = data.aws_identitystore_getgroup.exampleGetGroup.group_id
///   principal_type     = "GROUP"
///   target_id          = "123456789012"
///   target_type        = "AWS_ACCOUNT"
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
/// import com.pulumi.aws.ssoadmin.inputs.GetPermissionSetArgs;
/// import com.pulumi.aws.identitystore.IdentitystoreFunctions;
/// import com.pulumi.aws.identitystore.inputs.GetGroupArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupAlternateIdentifierArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupAlternateIdentifierUniqueAttributeArgs;
/// import com.pulumi.aws.ssoadmin.AccountAssignment;
/// import com.pulumi.aws.ssoadmin.AccountAssignmentArgs;
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
///         final var exampleGetPermissionSet = SsoadminFunctions.getPermissionSet(GetPermissionSetArgs.builder()
///             .instanceArn(example.arns()[0])
///             .name("AWSReadOnlyAccess")
///             .build());
///
///         final var exampleGetGroup = IdentitystoreFunctions.getGroup(GetGroupArgs.builder()
///             .identityStoreId(example.identityStoreIds()[0])
///             .alternateIdentifier(GetGroupAlternateIdentifierArgs.builder()
///                 .uniqueAttribute(GetGroupAlternateIdentifierUniqueAttributeArgs.builder()
///                     .attributePath("DisplayName")
///                     .attributeValue("ExampleGroup")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleAccountAssignment = new AccountAssignment("exampleAccountAssignment", AccountAssignmentArgs.builder()
///             .instanceArn(example.arns()[0])
///             .permissionSetArn(exampleGetPermissionSet.arn())
///             .principalId(exampleGetGroup.groupId())
///             .principalType("GROUP")
///             .targetId("123456789012")
///             .targetType("AWS_ACCOUNT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccountAssignment:
///     type: aws:ssoadmin:AccountAssignment
///     name: example
///     properties:
///       instanceArn: ${example.arns[0]}
///       permissionSetArn: ${exampleGetPermissionSet.arn}
///       principalId: ${exampleGetGroup.groupId}
///       principalType: GROUP
///       targetId: '123456789012'
///       targetType: AWS_ACCOUNT
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetPermissionSet:
///     fn::invoke:
///       function: aws:ssoadmin:getPermissionSet
///       arguments:
///         instanceArn: ${example.arns[0]}
///         name: AWSReadOnlyAccess
///   exampleGetGroup:
///     fn::invoke:
///       function: aws:identitystore:getGroup
///       arguments:
///         identityStoreId: ${example.identityStoreIds[0]}
///         alternateIdentifier:
///           uniqueAttribute:
///             attributePath: DisplayName
///             attributeValue: ExampleGroup
/// ```
///
///
/// ### With Managed Policy Attachment
///
/// &gt; Because destruction of a managed policy attachment resource also re-provisions the associated permission set to all accounts, explicitly indicating the dependency with the account assignment resource via the `dependsOn` meta argument is necessary to ensure proper deletion order when these resources are used together.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
///     name: "Example",
///     instanceArn: example.then(example => example.arns?.[0]),
/// });
/// const exampleGroup = new aws.identitystore.Group("example", {
///     identityStoreId: example.then(example => example.identityStoreIds?.[0]),
///     displayName: "Admin",
///     description: "Admin Group",
/// });
/// const exampleAccountAssignment = new aws.ssoadmin.AccountAssignment("example", {
///     instanceArn: example.then(example => example.arns?.[0]),
///     permissionSetArn: examplePermissionSet.arn,
///     principalId: exampleGroup.groupId,
///     principalType: "GROUP",
///     targetId: "123456789012",
///     targetType: "AWS_ACCOUNT",
/// });
/// const exampleManagedPolicyAttachment = new aws.ssoadmin.ManagedPolicyAttachment("example", {
///     instanceArn: example.then(example => example.arns?.[0]),
///     managedPolicyArn: "arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup",
///     permissionSetArn: examplePermissionSet.arn,
/// }, {
///     dependsOn: [exampleAccountAssignment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_permission_set = aws.ssoadmin.PermissionSet("example",
///     name="Example",
///     instance_arn=example.arns[0])
/// example_group = aws.identitystore.Group("example",
///     identity_store_id=example.identity_store_ids[0],
///     display_name="Admin",
///     description="Admin Group")
/// example_account_assignment = aws.ssoadmin.AccountAssignment("example",
///     instance_arn=example.arns[0],
///     permission_set_arn=example_permission_set.arn,
///     principal_id=example_group.group_id,
///     principal_type="GROUP",
///     target_id="123456789012",
///     target_type="AWS_ACCOUNT")
/// example_managed_policy_attachment = aws.ssoadmin.ManagedPolicyAttachment("example",
///     instance_arn=example.arns[0],
///     managed_policy_arn="arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup",
///     permission_set_arn=example_permission_set.arn,
///     opts = pulumi.ResourceOptions(depends_on=[example_account_assignment]))
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
///     var examplePermissionSet = new Aws.SsoAdmin.PermissionSet("example", new()
///     {
///         Name = "Example",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///     });
///
///     var exampleGroup = new Aws.IdentityStore.Group("example", new()
///     {
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///         DisplayName = "Admin",
///         Description = "Admin Group",
///     });
///
///     var exampleAccountAssignment = new Aws.SsoAdmin.AccountAssignment("example", new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         PermissionSetArn = examplePermissionSet.Arn,
///         PrincipalId = exampleGroup.GroupId,
///         PrincipalType = "GROUP",
///         TargetId = "123456789012",
///         TargetType = "AWS_ACCOUNT",
///     });
///
///     var exampleManagedPolicyAttachment = new Aws.SsoAdmin.ManagedPolicyAttachment("example", new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         ManagedPolicyArn = "arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup",
///         PermissionSetArn = examplePermissionSet.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAccountAssignment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
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
/// 		examplePermissionSet, err := ssoadmin.NewPermissionSet(ctx, "example", &ssoadmin.PermissionSetArgs{
/// 			Name:        pulumi.String("Example"),
/// 			InstanceArn: pulumi.String(example.Arns[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGroup, err := identitystore.NewGroup(ctx, "example", &identitystore.GroupArgs{
/// 			IdentityStoreId: pulumi.String(example.IdentityStoreIds[0]),
/// 			DisplayName:     pulumi.String("Admin"),
/// 			Description:     pulumi.String("Admin Group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccountAssignment, err := ssoadmin.NewAccountAssignment(ctx, "example", &ssoadmin.AccountAssignmentArgs{
/// 			InstanceArn:      pulumi.String(example.Arns[0]),
/// 			PermissionSetArn: examplePermissionSet.Arn,
/// 			PrincipalId:      exampleGroup.GroupId,
/// 			PrincipalType:    pulumi.String("GROUP"),
/// 			TargetId:         pulumi.String("123456789012"),
/// 			TargetType:       pulumi.String("AWS_ACCOUNT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewManagedPolicyAttachment(ctx, "example", &ssoadmin.ManagedPolicyAttachmentArgs{
/// 			InstanceArn:      pulumi.String(example.Arns[0]),
/// 			ManagedPolicyArn: pulumi.String("arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup"),
/// 			PermissionSetArn: examplePermissionSet.Arn,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAccountAssignment,
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
/// data "aws_ssoadmin_getinstances" "example" {
/// }
///
/// resource "aws_ssoadmin_permissionset" "example" {
///   name         = "Example"
///   instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
/// }
/// resource "aws_identitystore_group" "example" {
///   identity_store_id = data.aws_ssoadmin_getinstances.example.identity_store_ids[0]
///   display_name      = "Admin"
///   description       = "Admin Group"
/// }
/// resource "aws_ssoadmin_accountassignment" "example" {
///   instance_arn       = data.aws_ssoadmin_getinstances.example.arns[0]
///   permission_set_arn = aws_ssoadmin_permissionset.example.arn
///   principal_id       = aws_identitystore_group.example.group_id
///   principal_type     = "GROUP"
///   target_id          = "123456789012"
///   target_type        = "AWS_ACCOUNT"
/// }
/// resource "aws_ssoadmin_managedpolicyattachment" "example" {
///   depends_on         = [aws_ssoadmin_accountassignment.example]
///   instance_arn       = data.aws_ssoadmin_getinstances.example.arns[0]
///   managed_policy_arn = "arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup"
///   permission_set_arn = aws_ssoadmin_permissionset.example.arn
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
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
/// import com.pulumi.aws.identitystore.Group;
/// import com.pulumi.aws.identitystore.GroupArgs;
/// import com.pulumi.aws.ssoadmin.AccountAssignment;
/// import com.pulumi.aws.ssoadmin.AccountAssignmentArgs;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachment;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var examplePermissionSet = new PermissionSet("examplePermissionSet", PermissionSetArgs.builder()
///             .name("Example")
///             .instanceArn(example.arns()[0])
///             .build());
///
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .identityStoreId(example.identityStoreIds()[0])
///             .displayName("Admin")
///             .description("Admin Group")
///             .build());
///
///         var exampleAccountAssignment = new AccountAssignment("exampleAccountAssignment", AccountAssignmentArgs.builder()
///             .instanceArn(example.arns()[0])
///             .permissionSetArn(examplePermissionSet.arn())
///             .principalId(exampleGroup.groupId())
///             .principalType("GROUP")
///             .targetId("123456789012")
///             .targetType("AWS_ACCOUNT")
///             .build());
///
///         var exampleManagedPolicyAttachment = new ManagedPolicyAttachment("exampleManagedPolicyAttachment", ManagedPolicyAttachmentArgs.builder()
///             .instanceArn(example.arns()[0])
///             .managedPolicyArn("arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup")
///             .permissionSetArn(examplePermissionSet.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAccountAssignment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePermissionSet:
///     type: aws:ssoadmin:PermissionSet
///     name: example
///     properties:
///       name: Example
///       instanceArn: ${example.arns[0]}
///   exampleGroup:
///     type: aws:identitystore:Group
///     name: example
///     properties:
///       identityStoreId: ${example.identityStoreIds[0]}
///       displayName: Admin
///       description: Admin Group
///   exampleAccountAssignment:
///     type: aws:ssoadmin:AccountAssignment
///     name: example
///     properties:
///       instanceArn: ${example.arns[0]}
///       permissionSetArn: ${examplePermissionSet.arn}
///       principalId: ${exampleGroup.groupId}
///       principalType: GROUP
///       targetId: '123456789012'
///       targetType: AWS_ACCOUNT
///   exampleManagedPolicyAttachment:
///     type: aws:ssoadmin:ManagedPolicyAttachment
///     name: example
///     properties:
///       instanceArn: ${example.arns[0]}
///       managedPolicyArn: arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup
///       permissionSetArn: ${examplePermissionSet.arn}
///     options:
///       dependsOn:
///         - ${exampleAccountAssignment}
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
/// * `instanceArn` (String) ARN of the SSO Instance.
/// * `permissionSetArn` (String) ARN of the Permission Set.
/// * `principalId` (String) Identifier of the principal in IAM Identity Center.
/// * `principalType` (String) Type of principal. Valid values are `USER` and `GROUP`.
/// * `targetId` (String) AWS account identifier.
/// * `targetType` (String) Target type. Valid value is `AWS_ACCOUNT`.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Account Assignments using the `principalId`, `principalType`, `targetId`, `targetType`, `permissionSetArn`, `instanceArn` separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/accountAssignment:AccountAssignment example f81d4fae-7dec-11d0-a765-00a0c91e6bf6,GROUP,1234567890,AWS_ACCOUNT,arn:aws:sso:::permissionSet/ssoins-0123456789abcdef/ps-0123456789abcdef,arn:aws:sso:::instance/ssoins-0123456789abcdef
/// ```
class AccountAssignment extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the SSO Instance.
  late final pulumi.Output<String> instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to.
  late final pulumi.Output<String> permissionSetArn;
  /// An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs (For example, `f81d4fae-7dec-11d0-a765-00a0c91e6bf6`).
  late final pulumi.Output<String> principalId;
  /// The entity type for which the assignment will be created. Valid values: `USER`, `GROUP`.
  late final pulumi.Output<String> principalType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An AWS account identifier, typically a 10-12 digit string.
  late final pulumi.Output<String> targetId;
  /// The entity type for which the assignment will be created. Valid values: `AWS_ACCOUNT`.
  late final pulumi.Output<String> targetType;

  /// Creates a new [AccountAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountAssignment]. {@macro pulumi_ssoadmin_account_assignment_account_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountAssignment(
    String name, {
    AccountAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/accountAssignment:AccountAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
    region = registerOutput<String>('region');
    targetId = registerOutput<String>('targetId');
    targetType = registerOutput<String>('targetType');
  }

  /// Gets an existing [AccountAssignment] resource's state with the given [name] and [id].
  static AccountAssignment get(
    String name,
    pulumi.Input<String> id, {
    AccountAssignmentState? state,
  }) {
    return AccountAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/accountAssignment:AccountAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
    region = registerOutput<String>('region');
    targetId = registerOutput<String>('targetId');
    targetType = registerOutput<String>('targetType');
  }
}
