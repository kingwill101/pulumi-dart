import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_policy_attachments_exclusive_args.dart';
import 'managed_policy_attachments_exclusive_state.dart';
import 'managed_policy_attachments_exclusive_timeouts.dart';

/// Resource for managing exclusive AWS SSO Admin Managed Policy Attachments.
///
/// This resource is designed to manage all managed policy attachments for an SSO permission set. Using this resource, Terraform will remove any managed policies attached to the permission set that are not defined in the configuration.
///
/// &gt; **WARNING:** Do not use this resource together with the `aws.ssoadmin.ManagedPolicyAttachment` resource for the same permission set. Doing so will cause a conflict and will lead to managed policies being removed.
///
/// &gt; Destruction of this resource means Terraform will no longer manage the managed policy attachments, **but will not detach any policies**. The permission set will retain all managed policies that were attached at the time of destruction.
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
/// const exampleManagedPolicyAttachmentsExclusive = new aws.ssoadmin.ManagedPolicyAttachmentsExclusive("example", {
///     instanceArn: example.then(example => example.arns?.[0]),
///     permissionSetArn: examplePermissionSet.arn,
///     managedPolicyArns: ["arn:aws:iam::aws:policy/ReadOnlyAccess"],
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
/// example_managed_policy_attachments_exclusive = aws.ssoadmin.ManagedPolicyAttachmentsExclusive("example",
///     instance_arn=example.arns[0],
///     permission_set_arn=example_permission_set.arn,
///     managed_policy_arns=["arn:aws:iam::aws:policy/ReadOnlyAccess"])
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
///     var exampleManagedPolicyAttachmentsExclusive = new Aws.SsoAdmin.ManagedPolicyAttachmentsExclusive("example", new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         PermissionSetArn = examplePermissionSet.Arn,
///         ManagedPolicyArns = new[]
///         {
///             "arn:aws:iam::aws:policy/ReadOnlyAccess",
///         },
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
/// 		_, err = ssoadmin.NewManagedPolicyAttachmentsExclusive(ctx, "example", &ssoadmin.ManagedPolicyAttachmentsExclusiveArgs{
/// 			InstanceArn:      pulumi.String(example.Arns[0]),
/// 			PermissionSetArn: examplePermissionSet.Arn,
/// 			ManagedPolicyArns: pulumi.StringArray{
/// 				pulumi.String("arn:aws:iam::aws:policy/ReadOnlyAccess"),
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
/// data "aws_ssoadmin_getinstances" "example" {
/// }
///
/// resource "aws_ssoadmin_permissionset" "example" {
///   name         = "Example"
///   instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
/// }
/// resource "aws_ssoadmin_managedpolicyattachmentsexclusive" "example" {
///   instance_arn        = data.aws_ssoadmin_getinstances.example.arns[0]
///   permission_set_arn  = aws_ssoadmin_permissionset.example.arn
///   managed_policy_arns = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
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
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentsExclusive;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentsExclusiveArgs;
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
///         var exampleManagedPolicyAttachmentsExclusive = new ManagedPolicyAttachmentsExclusive("exampleManagedPolicyAttachmentsExclusive", ManagedPolicyAttachmentsExclusiveArgs.builder()
///             .instanceArn(example.arns()[0])
///             .permissionSetArn(examplePermissionSet.arn())
///             .managedPolicyArns("arn:aws:iam::aws:policy/ReadOnlyAccess")
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
///   exampleManagedPolicyAttachmentsExclusive:
///     type: aws:ssoadmin:ManagedPolicyAttachmentsExclusive
///     name: example
///     properties:
///       instanceArn: ${example.arns[0]}
///       permissionSetArn: ${examplePermissionSet.arn}
///       managedPolicyArns:
///         - arn:aws:iam::aws:policy/ReadOnlyAccess
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ### Disallow Managed Policy Attachments
///
/// To disallow all managed policy attachments, set `managedPolicyArns` to an empty list.
///
/// &gt; Any managed policies attached to the permission set will be **removed**.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssoadmin.ManagedPolicyAttachmentsExclusive("example", {
///     instanceArn: exampleAwsSsoadminInstances.arns[0],
///     permissionSetArn: exampleAwsSsoadminPermissionSet.arn,
///     managedPolicyArns: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.ManagedPolicyAttachmentsExclusive("example",
///     instance_arn=example_aws_ssoadmin_instances["arns"][0],
///     permission_set_arn=example_aws_ssoadmin_permission_set["arn"],
///     managed_policy_arns=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsoAdmin.ManagedPolicyAttachmentsExclusive("example", new()
///     {
///         InstanceArn = exampleAwsSsoadminInstances.Arns[0],
///         PermissionSetArn = exampleAwsSsoadminPermissionSet.Arn,
///         ManagedPolicyArns = new[] {},
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
/// 		_, err := ssoadmin.NewManagedPolicyAttachmentsExclusive(ctx, "example", &ssoadmin.ManagedPolicyAttachmentsExclusiveArgs{
/// 			InstanceArn:       pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// 			PermissionSetArn:  pulumi.Any(exampleAwsSsoadminPermissionSet.Arn),
/// 			ManagedPolicyArns: pulumi.StringArray{},
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
/// resource "aws_ssoadmin_managedpolicyattachmentsexclusive" "example" {
///   instance_arn        = exampleAwsSsoadminInstances.arns[0]
///   permission_set_arn  = exampleAwsSsoadminPermissionSet.arn
///   managed_policy_arns = []
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentsExclusive;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentsExclusiveArgs;
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
///         var example = new ManagedPolicyAttachmentsExclusive("example", ManagedPolicyAttachmentsExclusiveArgs.builder()
///             .instanceArn(exampleAwsSsoadminInstances.arns()[0])
///             .permissionSetArn(exampleAwsSsoadminPermissionSet.arn())
///             .managedPolicyArns()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssoadmin:ManagedPolicyAttachmentsExclusive
///     properties:
///       instanceArn: ${exampleAwsSsoadminInstances.arns[0]}
///       permissionSetArn: ${exampleAwsSsoadminPermissionSet.arn}
///       managedPolicyArns: []
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
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Admin Managed Policy Attachments Exclusive using the `instanceArn` and `permissionSetArn` arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/managedPolicyAttachmentsExclusive:ManagedPolicyAttachmentsExclusive example arn:aws:sso:::instance/ssoins-1234567890abcdef,arn:aws:sso:::permissionSet/ssoins-1234567890abcdef/ps-1234567890abcdef
/// ```
class ManagedPolicyAttachmentsExclusive extends pulumi.CustomResource {
  /// ARN of the SSO Instance.
  late final pulumi.Output<String> instanceArn;
  /// Set of ARNs of IAM managed policies to attach to the Permission Set.
  late final pulumi.Output<List<String>> managedPolicyArns;
  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<ManagedPolicyAttachmentsExclusiveTimeouts?> timeouts;

  /// Creates a new [ManagedPolicyAttachmentsExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPolicyAttachmentsExclusive]. {@macro pulumi_ssoadmin_managed_policy_attachments_exclusive_managed_policy_attachments_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPolicyAttachmentsExclusive(
    String name, {
    ManagedPolicyAttachmentsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/managedPolicyAttachmentsExclusive:ManagedPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    instanceArn = registerOutput<String>('instanceArn');
    managedPolicyArns = registerOutput<List<String>>('managedPolicyArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<ManagedPolicyAttachmentsExclusiveTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedPolicyAttachmentsExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ManagedPolicyAttachmentsExclusive] resource's state with the given [name] and [id].
  static ManagedPolicyAttachmentsExclusive get(
    String name,
    pulumi.Input<String> id, {
    ManagedPolicyAttachmentsExclusiveState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ManagedPolicyAttachmentsExclusive._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ManagedPolicyAttachmentsExclusive._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/managedPolicyAttachmentsExclusive:ManagedPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceArn = registerOutput<String>('instanceArn');
    managedPolicyArns = registerOutput<List<String>>('managedPolicyArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<ManagedPolicyAttachmentsExclusiveTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedPolicyAttachmentsExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ManagedPolicyAttachmentsExclusive] resource.
  ManagedPolicyAttachmentsExclusive.reference(String urn)
    : super(
        'aws:ssoadmin/managedPolicyAttachmentsExclusive:ManagedPolicyAttachmentsExclusive',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    instanceArn = registerOutput<String>('instanceArn');
    managedPolicyArns = registerOutput<List<String>>('managedPolicyArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<ManagedPolicyAttachmentsExclusiveTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedPolicyAttachmentsExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
