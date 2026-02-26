import 'package:pulumi/pulumi.dart';
import 'group_policy_attachments_exclusive_args.dart';

/// Resource for maintaining exclusive management of managed IAM policies assigned to an AWS IAM (Identity & Access Management) group.
///
/// !> This resource takes exclusive ownership over managed IAM policies attached to a group. This includes removal of managed IAM policies which are not explicitly configured. To prevent persistent drift, ensure any <span pulumi-lang-nodejs="`aws.iam.GroupPolicyAttachment`" pulumi-lang-dotnet="`aws.iam.GroupPolicyAttachment`" pulumi-lang-go="`iam.GroupPolicyAttachment`" pulumi-lang-python="`iam.GroupPolicyAttachment`" pulumi-lang-yaml="`aws.iam.GroupPolicyAttachment`" pulumi-lang-java="`aws.iam.GroupPolicyAttachment`">`aws.iam.GroupPolicyAttachment`</span> resources managed alongside this resource are included in the <span pulumi-lang-nodejs="`policyArns`" pulumi-lang-dotnet="`PolicyArns`" pulumi-lang-go="`policyArns`" pulumi-lang-python="`policy_arns`" pulumi-lang-yaml="`policyArns`" pulumi-lang-java="`policyArns`">`policy_arns`</span> argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured policy attachments. It **will not** detach the configured policies from the group.
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
/// const example = new aws.iam.GroupPolicyAttachmentsExclusive("example", {
/// groupName: exampleAwsIamGroup.name,
/// policyArns: [exampleAwsIamPolicy.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.GroupPolicyAttachmentsExclusive("example",
/// group_name=example_aws_iam_group["name"],
/// policy_arns=[example_aws_iam_policy["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iam.GroupPolicyAttachmentsExclusive("example", new()
/// {
/// GroupName = exampleAwsIamGroup.Name,
/// PolicyArns = new[]
/// {
/// exampleAwsIamPolicy.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewGroupPolicyAttachmentsExclusive(ctx, "example", &iam.GroupPolicyAttachmentsExclusiveArgs{
/// GroupName: pulumi.Any(exampleAwsIamGroup.Name),
/// PolicyArns: pulumi.StringArray{
/// exampleAwsIamPolicy.Arn,
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
/// import com.pulumi.aws.iam.GroupPolicyAttachmentsExclusive;
/// import com.pulumi.aws.iam.GroupPolicyAttachmentsExclusiveArgs;
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
/// var example = new GroupPolicyAttachmentsExclusive("example", GroupPolicyAttachmentsExclusiveArgs.builder()
/// .groupName(exampleAwsIamGroup.name())
/// .policyArns(exampleAwsIamPolicy.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:GroupPolicyAttachmentsExclusive
/// properties:
/// groupName: ${exampleAwsIamGroup.name}
/// policyArns:
/// - ${exampleAwsIamPolicy.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow Managed IAM Policies
///
/// To automatically remove any configured managed IAM policies, set the <span pulumi-lang-nodejs="`policyArns`" pulumi-lang-dotnet="`PolicyArns`" pulumi-lang-go="`policyArns`" pulumi-lang-python="`policy_arns`" pulumi-lang-yaml="`policyArns`" pulumi-lang-java="`policyArns`">`policy_arns`</span> argument to an empty list.
///
/// > This will not **prevent** managed IAM policies from being assigned to a group via Terraform (or any other interface). This resource enables bringing managed IAM policy assignments into a configured state, however, this reconciliation happens only when <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> is proactively run.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.GroupPolicyAttachmentsExclusive("example", {
/// groupName: exampleAwsIamGroup.name,
/// policyArns: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.GroupPolicyAttachmentsExclusive("example",
/// group_name=example_aws_iam_group["name"],
/// policy_arns=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iam.GroupPolicyAttachmentsExclusive("example", new()
/// {
/// GroupName = exampleAwsIamGroup.Name,
/// PolicyArns = new[] {},
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewGroupPolicyAttachmentsExclusive(ctx, "example", &iam.GroupPolicyAttachmentsExclusiveArgs{
/// GroupName:  pulumi.Any(exampleAwsIamGroup.Name),
/// PolicyArns: pulumi.StringArray{},
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
/// import com.pulumi.aws.iam.GroupPolicyAttachmentsExclusive;
/// import com.pulumi.aws.iam.GroupPolicyAttachmentsExclusiveArgs;
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
/// var example = new GroupPolicyAttachmentsExclusive("example", GroupPolicyAttachmentsExclusiveArgs.builder()
/// .groupName(exampleAwsIamGroup.name())
/// .policyArns()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:GroupPolicyAttachmentsExclusive
/// properties:
/// groupName: ${exampleAwsIamGroup.name}
/// policyArns: []
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of managed IAM policy assignments using the <span pulumi-lang-nodejs="`groupName`" pulumi-lang-dotnet="`GroupName`" pulumi-lang-go="`groupName`" pulumi-lang-python="`group_name`" pulumi-lang-yaml="`groupName`" pulumi-lang-java="`groupName`">`group_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPolicyAttachmentsExclusive:GroupPolicyAttachmentsExclusive example MyGroup
/// ```
class GroupPolicyAttachmentsExclusive extends CustomResource {
  /// IAM group name.
  late final Output<String> groupName;

  /// A list of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed.
  late final Output<List<String>> policyArns;

  GroupPolicyAttachmentsExclusive(
    String name, {
    GroupPolicyAttachmentsExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupPolicyAttachmentsExclusive:GroupPolicyAttachmentsExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.policyArns = registerOutput<List<String>>('policyArns');
  }
}
