import 'package:pulumi/pulumi.dart';
import 'user_policies_exclusive_args.dart';

/// Resource for maintaining exclusive management of inline policies assigned to an AWS IAM (Identity & Access Management) user.
///
/// !> This resource takes exclusive ownership over inline policies assigned to a user. This includes removal of inline policies which are not explicitly configured. To prevent persistent drift, ensure any <span pulumi-lang-nodejs="`aws.iam.UserPolicy`" pulumi-lang-dotnet="`aws.iam.UserPolicy`" pulumi-lang-go="`iam.UserPolicy`" pulumi-lang-python="`iam.UserPolicy`" pulumi-lang-yaml="`aws.iam.UserPolicy`" pulumi-lang-java="`aws.iam.UserPolicy`">`aws.iam.UserPolicy`</span> resources managed alongside this resource are included in the <span pulumi-lang-nodejs="`policyNames`" pulumi-lang-dotnet="`PolicyNames`" pulumi-lang-go="`policyNames`" pulumi-lang-python="`policy_names`" pulumi-lang-yaml="`policyNames`" pulumi-lang-java="`policyNames`">`policy_names`</span> argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured inline policy assignments. It __will not__ delete the configured policies from the user.
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
/// const example = new aws.iam.UserPoliciesExclusive("example", {
/// userName: exampleAwsIamUser.name,
/// policyNames: [exampleAwsIamUserPolicy.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.UserPoliciesExclusive("example",
/// user_name=example_aws_iam_user["name"],
/// policy_names=[example_aws_iam_user_policy["name"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iam.UserPoliciesExclusive("example", new()
/// {
/// UserName = exampleAwsIamUser.Name,
/// PolicyNames = new[]
/// {
/// exampleAwsIamUserPolicy.Name,
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
/// _, err := iam.NewUserPoliciesExclusive(ctx, "example", &iam.UserPoliciesExclusiveArgs{
/// UserName: pulumi.Any(exampleAwsIamUser.Name),
/// PolicyNames: pulumi.StringArray{
/// exampleAwsIamUserPolicy.Name,
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
/// import com.pulumi.aws.iam.UserPoliciesExclusive;
/// import com.pulumi.aws.iam.UserPoliciesExclusiveArgs;
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
/// var example = new UserPoliciesExclusive("example", UserPoliciesExclusiveArgs.builder()
/// .userName(exampleAwsIamUser.name())
/// .policyNames(exampleAwsIamUserPolicy.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:UserPoliciesExclusive
/// properties:
/// userName: ${exampleAwsIamUser.name}
/// policyNames:
/// - ${exampleAwsIamUserPolicy.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow Inline Policies
///
/// To automatically remove any configured inline policies, set the <span pulumi-lang-nodejs="`policyNames`" pulumi-lang-dotnet="`PolicyNames`" pulumi-lang-go="`policyNames`" pulumi-lang-python="`policy_names`" pulumi-lang-yaml="`policyNames`" pulumi-lang-java="`policyNames`">`policy_names`</span> argument to an empty list.
///
/// > This will not __prevent__ inline policies from being assigned to a user via Terraform (or any other interface). This resource enables bringing inline policy assignments into a configured state, however, this reconciliation happens only when <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> is proactively run.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.UserPoliciesExclusive("example", {
/// userName: exampleAwsIamUser.name,
/// policyNames: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.UserPoliciesExclusive("example",
/// user_name=example_aws_iam_user["name"],
/// policy_names=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iam.UserPoliciesExclusive("example", new()
/// {
/// UserName = exampleAwsIamUser.Name,
/// PolicyNames = new[] {},
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
/// _, err := iam.NewUserPoliciesExclusive(ctx, "example", &iam.UserPoliciesExclusiveArgs{
/// UserName:    pulumi.Any(exampleAwsIamUser.Name),
/// PolicyNames: pulumi.StringArray{},
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
/// import com.pulumi.aws.iam.UserPoliciesExclusive;
/// import com.pulumi.aws.iam.UserPoliciesExclusiveArgs;
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
/// var example = new UserPoliciesExclusive("example", UserPoliciesExclusiveArgs.builder()
/// .userName(exampleAwsIamUser.name())
/// .policyNames()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:UserPoliciesExclusive
/// properties:
/// userName: ${exampleAwsIamUser.name}
/// policyNames: []
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of inline policy assignments using the <span pulumi-lang-nodejs="`userName`" pulumi-lang-dotnet="`UserName`" pulumi-lang-go="`userName`" pulumi-lang-python="`user_name`" pulumi-lang-yaml="`userName`" pulumi-lang-java="`userName`">`user_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPoliciesExclusive:UserPoliciesExclusive example MyUser
/// ```
class UserPoliciesExclusive extends CustomResource {
  /// A list of inline policy names to be assigned to the user. Policies attached to this user but not configured in this argument will be removed.
  late final Output<List<String>> policyNames;

  /// IAM user name.
  late final Output<String> userName;

  UserPoliciesExclusive(
    String name, {
    UserPoliciesExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPoliciesExclusive:UserPoliciesExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policyNames = registerOutput<List<String>>('policyNames');
    this.userName = registerOutput<String>('userName');
  }
}
