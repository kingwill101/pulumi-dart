import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_policy_attachment_args.dart';
import 'managed_policy_attachment_state.dart';

/// Provides an IAM managed policy for a Single Sign-On (SSO) Permission Set resource
///
/// &gt; **NOTE:** Creating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// &gt; **WARNING:** Do not use this resource together with the `aws.ssoadmin.ManagedPolicyAttachmentsExclusive` resource for the same permission set. Doing so will cause a conflict and will lead to managed policies being removed.
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
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
///     name: "Example",
///     instanceArn: example.then(example => example.arns?.[0]),
/// });
/// const exampleManagedPolicyAttachment = new aws.ssoadmin.ManagedPolicyAttachment("example", {
///     instanceArn: example.then(example => example.arns?.[0]),
///     managedPolicyArn: "arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup",
///     permissionSetArn: examplePermissionSet.arn,
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
/// example_managed_policy_attachment = aws.ssoadmin.ManagedPolicyAttachment("example",
///     instance_arn=example.arns[0],
///     managed_policy_arn="arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup",
///     permission_set_arn=example_permission_set.arn)
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
///     var exampleManagedPolicyAttachment = new Aws.SsoAdmin.ManagedPolicyAttachment("example", new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         ManagedPolicyArn = "arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup",
///         PermissionSetArn = examplePermissionSet.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_, err = ssoadmin.NewManagedPolicyAttachment(ctx, "example", &ssoadmin.ManagedPolicyAttachmentArgs{
/// 			InstanceArn:      pulumi.String(example.Arns[0]),
/// 			ManagedPolicyArn: pulumi.String("arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup"),
/// 			PermissionSetArn: examplePermissionSet.Arn,
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
///
/// resource "aws_ssoadmin_permissionset" "example" {
///   name         = "Example"
///   instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
/// }
/// resource "aws_ssoadmin_managedpolicyattachment" "example" {
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
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachment;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentArgs;
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
///         var exampleManagedPolicyAttachment = new ManagedPolicyAttachment("exampleManagedPolicyAttachment", ManagedPolicyAttachmentArgs.builder()
///             .instanceArn(example.arns()[0])
///             .managedPolicyArn("arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup")
///             .permissionSetArn(examplePermissionSet.arn())
///             .build());
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
///   exampleManagedPolicyAttachment:
///     type: aws:ssoadmin:ManagedPolicyAttachment
///     name: example
///     properties:
///       instanceArn: ${example.arns[0]}
///       managedPolicyArn: arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup
///       permissionSetArn: ${examplePermissionSet.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ### With Account Assignment
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
/// Using `pulumi import`, import SSO Managed Policy Attachments using the `managedPolicyArn`, `permissionSetArn`, and `instanceArn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/managedPolicyAttachment:ManagedPolicyAttachment example arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup,arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class ManagedPolicyAttachment extends pulumi.CustomResource {
  /// ARN of the SSO Instance under which the operation will be executed.
  late final pulumi.Output<String> instanceArn;
  /// IAM managed policy ARN to be attached to the Permission Set.
  late final pulumi.Output<String> managedPolicyArn;
  /// The name of the IAM Managed Policy.
  late final pulumi.Output<String> managedPolicyName;
  /// ARN of the Permission Set.
  late final pulumi.Output<String> permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ManagedPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPolicyAttachment]. {@macro pulumi_ssoadmin_managed_policy_attachment_managed_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPolicyAttachment(
    String name, {
    ManagedPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/managedPolicyAttachment:ManagedPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    instanceArn = registerOutput<String>('instanceArn');
    managedPolicyArn = registerOutput<String>('managedPolicyArn');
    managedPolicyName = registerOutput<String>('managedPolicyName');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ManagedPolicyAttachment] resource's state with the given [name] and [id].
  static ManagedPolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    ManagedPolicyAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ManagedPolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ManagedPolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/managedPolicyAttachment:ManagedPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceArn = registerOutput<String>('instanceArn');
    managedPolicyArn = registerOutput<String>('managedPolicyArn');
    managedPolicyName = registerOutput<String>('managedPolicyName');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ManagedPolicyAttachment] resource.
  ManagedPolicyAttachment.reference(String urn)
    : super(
        'aws:ssoadmin/managedPolicyAttachment:ManagedPolicyAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    instanceArn = registerOutput<String>('instanceArn');
    managedPolicyArn = registerOutput<String>('managedPolicyArn');
    managedPolicyName = registerOutput<String>('managedPolicyName');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
  }
}
