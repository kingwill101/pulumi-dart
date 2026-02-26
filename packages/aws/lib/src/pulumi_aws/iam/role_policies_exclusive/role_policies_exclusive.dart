import 'package:pulumi/pulumi.dart';
import 'role_policies_exclusive_args.dart';

/// > **NOTE:**: To reliably detect drift between customer managed inline policies listed in this resource and actual policies attached to the role in the cloud, you currently need to run Pulumi with `pulumi up --refresh`. See [#4766](https://github.com/pulumi/pulumi-aws/issues/4766) for tracking making this work with regular `pulumi up` invocations.
///
/// Resource for maintaining exclusive management of inline policies assigned to an AWS IAM (Identity & Access Management) role.
///
/// !> This resource takes exclusive ownership over inline policies assigned to a role. This includes removal of inline policies which are not explicitly configured. To prevent persistent drift, ensure any <span pulumi-lang-nodejs="`aws.iam.RolePolicy`" pulumi-lang-dotnet="`aws.iam.RolePolicy`" pulumi-lang-go="`iam.RolePolicy`" pulumi-lang-python="`iam.RolePolicy`" pulumi-lang-yaml="`aws.iam.RolePolicy`" pulumi-lang-java="`aws.iam.RolePolicy`">`aws.iam.RolePolicy`</span> resources managed alongside this resource are included in the <span pulumi-lang-nodejs="`policyNames`" pulumi-lang-dotnet="`PolicyNames`" pulumi-lang-go="`policyNames`" pulumi-lang-python="`policy_names`" pulumi-lang-yaml="`policyNames`" pulumi-lang-java="`policyNames`">`policy_names`</span> argument.
///
/// > Destruction of this resource means Pulumi will no longer manage reconciliation of the configured inline policy assignments. It __will not__ delete the configured policies from the role.
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
/// const example = new aws.iam.RolePoliciesExclusive("example", {
/// roleName: exampleAwsIamRole.name,
/// policyNames: [exampleAwsIamRolePolicy.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.RolePoliciesExclusive("example",
/// role_name=example_aws_iam_role["name"],
/// policy_names=[example_aws_iam_role_policy["name"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iam.RolePoliciesExclusive("example", new()
/// {
/// RoleName = exampleAwsIamRole.Name,
/// PolicyNames = new[]
/// {
/// exampleAwsIamRolePolicy.Name,
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
/// _, err := iam.NewRolePoliciesExclusive(ctx, "example", &iam.RolePoliciesExclusiveArgs{
/// RoleName: pulumi.Any(exampleAwsIamRole.Name),
/// PolicyNames: pulumi.StringArray{
/// exampleAwsIamRolePolicy.Name,
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
/// import com.pulumi.aws.iam.RolePoliciesExclusive;
/// import com.pulumi.aws.iam.RolePoliciesExclusiveArgs;
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
/// var example = new RolePoliciesExclusive("example", RolePoliciesExclusiveArgs.builder()
/// .roleName(exampleAwsIamRole.name())
/// .policyNames(exampleAwsIamRolePolicy.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:RolePoliciesExclusive
/// properties:
/// roleName: ${exampleAwsIamRole.name}
/// policyNames:
/// - ${exampleAwsIamRolePolicy.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow Inline Policies
///
/// To automatically remove any configured inline policies, set the <span pulumi-lang-nodejs="`policyNames`" pulumi-lang-dotnet="`PolicyNames`" pulumi-lang-go="`policyNames`" pulumi-lang-python="`policy_names`" pulumi-lang-yaml="`policyNames`" pulumi-lang-java="`policyNames`">`policy_names`</span> argument to an empty list.
///
/// > This will not __prevent__ inline policies from being assigned to a role via Pulumi (or any other interface). This resource enables bringing inline policy assignments into a configured state, however, this reconciliation happens only when <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> is proactively run.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.RolePoliciesExclusive("example", {
/// roleName: exampleAwsIamRole.name,
/// policyNames: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.RolePoliciesExclusive("example",
/// role_name=example_aws_iam_role["name"],
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
/// var example = new Aws.Iam.RolePoliciesExclusive("example", new()
/// {
/// RoleName = exampleAwsIamRole.Name,
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
/// _, err := iam.NewRolePoliciesExclusive(ctx, "example", &iam.RolePoliciesExclusiveArgs{
/// RoleName:    pulumi.Any(exampleAwsIamRole.Name),
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
/// import com.pulumi.aws.iam.RolePoliciesExclusive;
/// import com.pulumi.aws.iam.RolePoliciesExclusiveArgs;
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
/// var example = new RolePoliciesExclusive("example", RolePoliciesExclusiveArgs.builder()
/// .roleName(exampleAwsIamRole.name())
/// .policyNames()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:RolePoliciesExclusive
/// properties:
/// roleName: ${exampleAwsIamRole.name}
/// policyNames: []
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of inline policy assignments using the <span pulumi-lang-nodejs="`roleName`" pulumi-lang-dotnet="`RoleName`" pulumi-lang-go="`roleName`" pulumi-lang-python="`role_name`" pulumi-lang-yaml="`roleName`" pulumi-lang-java="`roleName`">`role_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/rolePoliciesExclusive:RolePoliciesExclusive example MyRole
/// ```
class RolePoliciesExclusive extends CustomResource {
  /// A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  late final Output<List<String>> policyNames;

  /// IAM role name.
  late final Output<String> roleName;

  RolePoliciesExclusive(
    String name, {
    RolePoliciesExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/rolePoliciesExclusive:RolePoliciesExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policyNames = registerOutput<List<String>>('policyNames');
    this.roleName = registerOutput<String>('roleName');
  }
}
