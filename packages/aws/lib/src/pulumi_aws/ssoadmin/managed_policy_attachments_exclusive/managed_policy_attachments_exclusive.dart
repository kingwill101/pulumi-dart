import 'package:pulumi/pulumi.dart';
import '../managed_policy_attachments_exclusive_timeouts/managed_policy_attachments_exclusive_timeouts.dart';
import 'managed_policy_attachments_exclusive_args.dart';

/// Resource for managing exclusive AWS SSO Admin Managed Policy Attachments.
///
/// This resource is designed to manage all managed policy attachments for an SSO permission set. Using this resource, Terraform will remove any managed policies attached to the permission set that are not defined in the configuration.
///
/// !> **WARNING:** Do not use this resource together with the <span pulumi-lang-nodejs="`aws.ssoadmin.ManagedPolicyAttachment`" pulumi-lang-dotnet="`aws.ssoadmin.ManagedPolicyAttachment`" pulumi-lang-go="`ssoadmin.ManagedPolicyAttachment`" pulumi-lang-python="`ssoadmin.ManagedPolicyAttachment`" pulumi-lang-yaml="`aws.ssoadmin.ManagedPolicyAttachment`" pulumi-lang-java="`aws.ssoadmin.ManagedPolicyAttachment`">`aws.ssoadmin.ManagedPolicyAttachment`</span> resource for the same permission set. Doing so will cause a conflict and will lead to managed policies being removed.
///
/// > Destruction of this resource means Terraform will no longer manage the managed policy attachments, **but will not detach any policies**. The permission set will retain all managed policies that were attached at the time of destruction.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
/// name: "Example",
/// instanceArn: example.then(example => example.arns?.[0]),
/// });
/// const exampleManagedPolicyAttachmentsExclusive = new aws.ssoadmin.ManagedPolicyAttachmentsExclusive("example", {
/// instanceArn: example.then(example => example.arns?.[0]),
/// permissionSetArn: examplePermissionSet.arn,
/// managedPolicyArns: ["arn:aws:iam::aws:policy/ReadOnlyAccess"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_permission_set = aws.ssoadmin.PermissionSet("example",
/// name="Example",
/// instance_arn=example.arns[0])
/// example_managed_policy_attachments_exclusive = aws.ssoadmin.ManagedPolicyAttachmentsExclusive("example",
/// instance_arn=example.arns[0],
/// permission_set_arn=example_permission_set.arn,
/// managed_policy_arns=["arn:aws:iam::aws:policy/ReadOnlyAccess"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// var examplePermissionSet = new Aws.SsoAdmin.PermissionSet("example", new()
/// {
/// Name = "Example",
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// });
///
/// var exampleManagedPolicyAttachmentsExclusive = new Aws.SsoAdmin.ManagedPolicyAttachmentsExclusive("example", new()
/// {
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// PermissionSetArn = examplePermissionSet.Arn,
/// ManagedPolicyArns = new[]
/// {
/// "arn:aws:iam::aws:policy/ReadOnlyAccess",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// examplePermissionSet, err := ssoadmin.NewPermissionSet(ctx, "example", &ssoadmin.PermissionSetArgs{
/// Name:        pulumi.String("Example"),
/// InstanceArn: pulumi.String(example.Arns[0]),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ssoadmin.NewManagedPolicyAttachmentsExclusive(ctx, "example", &ssoadmin.ManagedPolicyAttachmentsExclusiveArgs{
/// InstanceArn:      pulumi.String(example.Arns[0]),
/// PermissionSetArn: examplePermissionSet.Arn,
/// ManagedPolicyArns: pulumi.StringArray{
/// pulumi.String("arn:aws:iam::aws:policy/ReadOnlyAccess"),
/// },
/// })
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentsExclusive;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentsExclusiveArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// var examplePermissionSet = new PermissionSet("examplePermissionSet", PermissionSetArgs.builder()
/// .name("Example")
/// .instanceArn(example.arns()[0])
/// .build());
///
/// var exampleManagedPolicyAttachmentsExclusive = new ManagedPolicyAttachmentsExclusive("exampleManagedPolicyAttachmentsExclusive", ManagedPolicyAttachmentsExclusiveArgs.builder()
/// .instanceArn(example.arns()[0])
/// .permissionSetArn(examplePermissionSet.arn())
/// .managedPolicyArns("arn:aws:iam::aws:policy/ReadOnlyAccess")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplePermissionSet:
/// type: aws:ssoadmin:PermissionSet
/// name: example
/// properties:
/// name: Example
/// instanceArn: ${example.arns[0]}
/// exampleManagedPolicyAttachmentsExclusive:
/// type: aws:ssoadmin:ManagedPolicyAttachmentsExclusive
/// name: example
/// properties:
/// instanceArn: ${example.arns[0]}
/// permissionSetArn: ${examplePermissionSet.arn}
/// managedPolicyArns:
/// - arn:aws:iam::aws:policy/ReadOnlyAccess
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow Managed Policy Attachments
///
/// To disallow all managed policy attachments, set <span pulumi-lang-nodejs="`managedPolicyArns`" pulumi-lang-dotnet="`ManagedPolicyArns`" pulumi-lang-go="`managedPolicyArns`" pulumi-lang-python="`managed_policy_arns`" pulumi-lang-yaml="`managedPolicyArns`" pulumi-lang-java="`managedPolicyArns`">`managed_policy_arns`</span> to an empty list.
///
/// > Any managed policies attached to the permission set will be **removed**.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssoadmin.ManagedPolicyAttachmentsExclusive("example", {
/// instanceArn: exampleAwsSsoadminInstances.arns[0],
/// permissionSetArn: exampleAwsSsoadminPermissionSet.arn,
/// managedPolicyArns: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.ManagedPolicyAttachmentsExclusive("example",
/// instance_arn=example_aws_ssoadmin_instances["arns"][0],
/// permission_set_arn=example_aws_ssoadmin_permission_set["arn"],
/// managed_policy_arns=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SsoAdmin.ManagedPolicyAttachmentsExclusive("example", new()
/// {
/// InstanceArn = exampleAwsSsoadminInstances.Arns[0],
/// PermissionSetArn = exampleAwsSsoadminPermissionSet.Arn,
/// ManagedPolicyArns = new[] {},
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssoadmin.NewManagedPolicyAttachmentsExclusive(ctx, "example", &ssoadmin.ManagedPolicyAttachmentsExclusiveArgs{
/// InstanceArn:       pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// PermissionSetArn:  pulumi.Any(exampleAwsSsoadminPermissionSet.Arn),
/// ManagedPolicyArns: pulumi.StringArray{},
/// })
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
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentsExclusive;
/// import com.pulumi.aws.ssoadmin.ManagedPolicyAttachmentsExclusiveArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ManagedPolicyAttachmentsExclusive("example", ManagedPolicyAttachmentsExclusiveArgs.builder()
/// .instanceArn(exampleAwsSsoadminInstances.arns()[0])
/// .permissionSetArn(exampleAwsSsoadminPermissionSet.arn())
/// .managedPolicyArns()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ssoadmin:ManagedPolicyAttachmentsExclusive
/// properties:
/// instanceArn: ${exampleAwsSsoadminInstances.arns[0]}
/// permissionSetArn: ${exampleAwsSsoadminPermissionSet.arn}
/// managedPolicyArns: []
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`instanceArn`" pulumi-lang-dotnet="`InstanceArn`" pulumi-lang-go="`instanceArn`" pulumi-lang-python="`instance_arn`" pulumi-lang-yaml="`instanceArn`" pulumi-lang-java="`instanceArn`">`instance_arn`</span> (String) ARN of the SSO Instance.
/// * <span pulumi-lang-nodejs="`permissionSetArn`" pulumi-lang-dotnet="`PermissionSetArn`" pulumi-lang-go="`permissionSetArn`" pulumi-lang-python="`permission_set_arn`" pulumi-lang-yaml="`permissionSetArn`" pulumi-lang-java="`permissionSetArn`">`permission_set_arn`</span> (String) ARN of the Permission Set.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Admin Managed Policy Attachments Exclusive using the <span pulumi-lang-nodejs="`instanceArn`" pulumi-lang-dotnet="`InstanceArn`" pulumi-lang-go="`instanceArn`" pulumi-lang-python="`instance_arn`" pulumi-lang-yaml="`instanceArn`" pulumi-lang-java="`instanceArn`">`instance_arn`</span> and <span pulumi-lang-nodejs="`permissionSetArn`" pulumi-lang-dotnet="`PermissionSetArn`" pulumi-lang-go="`permissionSetArn`" pulumi-lang-python="`permission_set_arn`" pulumi-lang-yaml="`permissionSetArn`" pulumi-lang-java="`permissionSetArn`">`permission_set_arn`</span> arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/managedPolicyAttachmentsExclusive:ManagedPolicyAttachmentsExclusive example arn:aws:sso:::instance/ssoins-1234567890abcdef,arn:aws:sso:::permissionSet/ssoins-1234567890abcdef/ps-1234567890abcdef
/// ```
class ManagedPolicyAttachmentsExclusive extends CustomResource {
  /// ARN of the SSO Instance.
  late final Output<String> instanceArn;

  /// Set of ARNs of IAM managed policies to attach to the Permission Set.
  late final Output<List<String>> managedPolicyArns;

  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  late final Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<ManagedPolicyAttachmentsExclusiveTimeouts?> timeouts;

  ManagedPolicyAttachmentsExclusive(
    String name, {
    ManagedPolicyAttachmentsExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/managedPolicyAttachmentsExclusive:ManagedPolicyAttachmentsExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.instanceArn = registerOutput<String>('instanceArn');
    this.managedPolicyArns = registerOutput<List<String>>('managedPolicyArns');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<ManagedPolicyAttachmentsExclusiveTimeouts?>('timeouts');
  }
}
