import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_args.dart';

/// Provides a resource to attach an AWS Organizations policy to an organization account, root, or unit.
///
/// ## Example Usage
///
/// ### Organization Account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const account = new aws.organizations.PolicyAttachment("account", {
///     policyId: example.id,
///     targetId: "123456789012",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// account = aws.organizations.PolicyAttachment("account",
///     policy_id=example["id"],
///     target_id="123456789012")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new Aws.Organizations.PolicyAttachment("account", new()
///     {
///         PolicyId = example.Id,
///         TargetId = "123456789012",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewPolicyAttachment(ctx, "account", &organizations.PolicyAttachmentArgs{
/// 			PolicyId: pulumi.Any(example.Id),
/// 			TargetId: pulumi.String("123456789012"),
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
/// import com.pulumi.aws.organizations.PolicyAttachment;
/// import com.pulumi.aws.organizations.PolicyAttachmentArgs;
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
///         var account = new PolicyAttachment("account", PolicyAttachmentArgs.builder()
///             .policyId(example.id())
///             .targetId("123456789012")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: aws:organizations:PolicyAttachment
///     properties:
///       policyId: ${example.id}
///       targetId: '123456789012'
/// ```
///
///
/// ### Organization Root
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const root = new aws.organizations.PolicyAttachment("root", {
///     policyId: example.id,
///     targetId: exampleAwsOrganizationsOrganization.roots[0].id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// root = aws.organizations.PolicyAttachment("root",
///     policy_id=example["id"],
///     target_id=example_aws_organizations_organization["roots"][0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var root = new Aws.Organizations.PolicyAttachment("root", new()
///     {
///         PolicyId = example.Id,
///         TargetId = exampleAwsOrganizationsOrganization.Roots[0].Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewPolicyAttachment(ctx, "root", &organizations.PolicyAttachmentArgs{
/// 			PolicyId: pulumi.Any(example.Id),
/// 			TargetId: pulumi.Any(exampleAwsOrganizationsOrganization.Roots[0].Id),
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
/// import com.pulumi.aws.organizations.PolicyAttachment;
/// import com.pulumi.aws.organizations.PolicyAttachmentArgs;
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
///         var root = new PolicyAttachment("root", PolicyAttachmentArgs.builder()
///             .policyId(example.id())
///             .targetId(exampleAwsOrganizationsOrganization.roots()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   root:
///     type: aws:organizations:PolicyAttachment
///     properties:
///       policyId: ${example.id}
///       targetId: ${exampleAwsOrganizationsOrganization.roots[0].id}
/// ```
///
///
/// ### Organization Unit
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const unit = new aws.organizations.PolicyAttachment("unit", {
///     policyId: example.id,
///     targetId: exampleAwsOrganizationsOrganizationalUnit.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// unit = aws.organizations.PolicyAttachment("unit",
///     policy_id=example["id"],
///     target_id=example_aws_organizations_organizational_unit["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var unit = new Aws.Organizations.PolicyAttachment("unit", new()
///     {
///         PolicyId = example.Id,
///         TargetId = exampleAwsOrganizationsOrganizationalUnit.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewPolicyAttachment(ctx, "unit", &organizations.PolicyAttachmentArgs{
/// 			PolicyId: pulumi.Any(example.Id),
/// 			TargetId: pulumi.Any(exampleAwsOrganizationsOrganizationalUnit.Id),
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
/// import com.pulumi.aws.organizations.PolicyAttachment;
/// import com.pulumi.aws.organizations.PolicyAttachmentArgs;
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
///         var unit = new PolicyAttachment("unit", PolicyAttachmentArgs.builder()
///             .policyId(example.id())
///             .targetId(exampleAwsOrganizationsOrganizationalUnit.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   unit:
///     type: aws:organizations:PolicyAttachment
///     properties:
///       policyId: ${example.id}
///       targetId: ${exampleAwsOrganizationsOrganizationalUnit.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `policy_id` (String) Organizations policy ID.
/// * `target_id` (String) Organizations target ID (account, OU, or root).
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.organizations.PolicyAttachment` using the target ID and policy ID. For example:
///
/// With an account target:
///
/// ```sh
/// $ pulumi import aws:organizations/policyAttachment:PolicyAttachment example 123456789012:p-12345678
/// ```
class PolicyAttachment extends pulumi.CustomResource {
  /// The unique identifier (ID) of the policy that you want to attach to the target.
  late final pulumi.Output<String> policyId;
  /// If set to `true`, destroy will **not** detach the policy and instead just remove the resource from state. This can be useful in situations where the attachment must be preserved to meet the AWS minimum requirement of 1 attached policy.
  late final pulumi.Output<bool?> skipDestroy;
  /// The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to.
  late final pulumi.Output<String> targetId;

  /// Creates a new [PolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyAttachment]. {@macro pulumi_organizations_policy_attachment_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyAttachment(
    String name, {
    PolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyId = registerOutput<String>('policyId');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.targetId = registerOutput<String>('targetId');
  }
}
