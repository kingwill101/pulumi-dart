import 'package:pulumi/pulumi.dart';
import 'user_policy_attachment_args.dart';

/// Attaches a Managed IAM Policy to an IAM user
///
/// > **NOTE:** The usage of this resource conflicts with the <span pulumi-lang-nodejs="`aws.iam.PolicyAttachment`" pulumi-lang-dotnet="`aws.iam.PolicyAttachment`" pulumi-lang-go="`iam.PolicyAttachment`" pulumi-lang-python="`iam.PolicyAttachment`" pulumi-lang-yaml="`aws.iam.PolicyAttachment`" pulumi-lang-java="`aws.iam.PolicyAttachment`">`aws.iam.PolicyAttachment`</span> resource and will permanently show a difference if both are defined.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const user = new aws.iam.User("user", {name: "test-user"});
/// const policy = new aws.iam.Policy("policy", {
/// name: "test-policy",
/// description: "A test policy",
/// policy: "{ ... policy JSON ... }",
/// });
/// const test_attach = new aws.iam.UserPolicyAttachment("test-attach", {
/// user: user.name,
/// policyArn: policy.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user = aws.iam.User("user", name="test-user")
/// policy = aws.iam.Policy("policy",
/// name="test-policy",
/// description="A test policy",
/// policy="{ ... policy JSON ... }")
/// test_attach = aws.iam.UserPolicyAttachment("test-attach",
/// user=user.name,
/// policy_arn=policy.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var user = new Aws.Iam.User("user", new()
/// {
/// Name = "test-user",
/// });
///
/// var policy = new Aws.Iam.Policy("policy", new()
/// {
/// Name = "test-policy",
/// Description = "A test policy",
/// PolicyDocument = "{ ... policy JSON ... }",
/// });
///
/// var test_attach = new Aws.Iam.UserPolicyAttachment("test-attach", new()
/// {
/// User = user.Name,
/// PolicyArn = policy.Arn,
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
/// user, err := iam.NewUser(ctx, "user", &iam.UserArgs{
/// Name: pulumi.String("test-user"),
/// })
/// if err != nil {
/// return err
/// }
/// policy, err := iam.NewPolicy(ctx, "policy", &iam.PolicyArgs{
/// Name:        pulumi.String("test-policy"),
/// Description: pulumi.String("A test policy"),
/// Policy:      pulumi.Any("{ ... policy JSON ... }"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewUserPolicyAttachment(ctx, "test-attach", &iam.UserPolicyAttachmentArgs{
/// User:      user.Name,
/// PolicyArn: policy.Arn,
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
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.UserPolicyAttachment;
/// import com.pulumi.aws.iam.UserPolicyAttachmentArgs;
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
/// var user = new User("user", UserArgs.builder()
/// .name("test-user")
/// .build());
///
/// var policy = new Policy("policy", PolicyArgs.builder()
/// .name("test-policy")
/// .description("A test policy")
/// .policy("{ ... policy JSON ... }")
/// .build());
///
/// var test_attach = new UserPolicyAttachment("test-attach", UserPolicyAttachmentArgs.builder()
/// .user(user.name())
/// .policyArn(policy.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// user:
/// type: aws:iam:User
/// properties:
/// name: test-user
/// policy:
/// type: aws:iam:Policy
/// properties:
/// name: test-policy
/// description: A test policy
/// policy: '{ ... policy JSON ... }'
/// test-attach:
/// type: aws:iam:UserPolicyAttachment
/// properties:
/// user: ${user.name}
/// policyArn: ${policy.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM user policy attachments using the user name and policy arn separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPolicyAttachment:UserPolicyAttachment test-attach test-user/arn:aws:iam::xxxxxxxxxxxx:policy/test-policy
/// ```
class UserPolicyAttachment extends CustomResource {
  /// The ARN of the policy you want to apply
  late final Output<String> policyArn;

  /// The user the policy should be applied to
  late final Output<String> user;

  UserPolicyAttachment(
    String name, {
    UserPolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicyAttachment:UserPolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policyArn = registerOutput<String>('policyArn');
    this.user = registerOutput<String>('user');
  }
}
