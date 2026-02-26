import 'package:pulumi/pulumi.dart';
import 'user_args5.dart';

/// Provides an IAM user.
///
/// > *NOTE:* If policies are attached to the user via the <span pulumi-lang-nodejs="`aws.iam.PolicyAttachment`" pulumi-lang-dotnet="`aws.iam.PolicyAttachment`" pulumi-lang-go="`iam.PolicyAttachment`" pulumi-lang-python="`iam.PolicyAttachment`" pulumi-lang-yaml="`aws.iam.PolicyAttachment`" pulumi-lang-java="`aws.iam.PolicyAttachment`">`aws.iam.PolicyAttachment`</span> resource and you are modifying the user <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`path`" pulumi-lang-dotnet="`Path`" pulumi-lang-go="`path`" pulumi-lang-python="`path`" pulumi-lang-yaml="`path`" pulumi-lang-java="`path`">`path`</span>, the <span pulumi-lang-nodejs="`forceDestroy`" pulumi-lang-dotnet="`ForceDestroy`" pulumi-lang-go="`forceDestroy`" pulumi-lang-python="`force_destroy`" pulumi-lang-yaml="`forceDestroy`" pulumi-lang-java="`forceDestroy`">`force_destroy`</span> argument must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and applied before attempting the operation otherwise you will encounter a `DeleteConflict` error. The <span pulumi-lang-nodejs="`aws.iam.UserPolicyAttachment`" pulumi-lang-dotnet="`aws.iam.UserPolicyAttachment`" pulumi-lang-go="`iam.UserPolicyAttachment`" pulumi-lang-python="`iam.UserPolicyAttachment`" pulumi-lang-yaml="`aws.iam.UserPolicyAttachment`" pulumi-lang-java="`aws.iam.UserPolicyAttachment`">`aws.iam.UserPolicyAttachment`</span> resource (recommended) does not have this requirement.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lb = new aws.iam.User("lb", {
/// name: "loadbalancer",
/// path: "/system/",
/// tags: {
/// "tag-key": "tag-value",
/// },
/// });
/// const lbAccessKey = new aws.iam.AccessKey("lb", {user: lb.name});
/// const lbRo = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// actions: ["ec2:Describe*"],
/// resources: ["*"],
/// }],
/// });
/// const lbRoUserPolicy = new aws.iam.UserPolicy("lb_ro", {
/// name: "test",
/// user: lb.name,
/// policy: lbRo.then(lbRo => lbRo.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lb = aws.iam.User("lb",
/// name="loadbalancer",
/// path="/system/",
/// tags={
/// "tag-key": "tag-value",
/// })
/// lb_access_key = aws.iam.AccessKey("lb", user=lb.name)
/// lb_ro = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": ["ec2:Describe*"],
/// "resources": ["*"],
/// }])
/// lb_ro_user_policy = aws.iam.UserPolicy("lb_ro",
/// name="test",
/// user=lb.name,
/// policy=lb_ro.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var lb = new Aws.Iam.User("lb", new()
/// {
/// Name = "loadbalancer",
/// Path = "/system/",
/// Tags =
/// {
/// { "tag-key", "tag-value" },
/// },
/// });
///
/// var lbAccessKey = new Aws.Iam.AccessKey("lb", new()
/// {
/// User = lb.Name,
/// });
///
/// var lbRo = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "ec2:Describe*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var lbRoUserPolicy = new Aws.Iam.UserPolicy("lb_ro", new()
/// {
/// Name = "test",
/// User = lb.Name,
/// Policy = lbRo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// lb, err := iam.NewUser(ctx, "lb", &iam.UserArgs{
/// Name: pulumi.String("loadbalancer"),
/// Path: pulumi.String("/system/"),
/// Tags: pulumi.StringMap{
/// "tag-key": pulumi.String("tag-value"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewAccessKey(ctx, "lb", &iam.AccessKeyArgs{
/// User: lb.Name,
/// })
/// if err != nil {
/// return err
/// }
/// lbRo, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "ec2:Describe*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewUserPolicy(ctx, "lb_ro", &iam.UserPolicyArgs{
/// Name:   pulumi.String("test"),
/// User:   lb.Name,
/// Policy: pulumi.String(lbRo.Json),
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
/// import com.pulumi.aws.iam.AccessKey;
/// import com.pulumi.aws.iam.AccessKeyArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.UserPolicy;
/// import com.pulumi.aws.iam.UserPolicyArgs;
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
/// var lb = new User("lb", UserArgs.builder()
/// .name("loadbalancer")
/// .path("/system/")
/// .tags(Map.of("tag-key", "tag-value"))
/// .build());
///
/// var lbAccessKey = new AccessKey("lbAccessKey", AccessKeyArgs.builder()
/// .user(lb.name())
/// .build());
///
/// final var lbRo = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("ec2:Describe*")
/// .resources("*")
/// .build())
/// .build());
///
/// var lbRoUserPolicy = new UserPolicy("lbRoUserPolicy", UserPolicyArgs.builder()
/// .name("test")
/// .user(lb.name())
/// .policy(lbRo.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// lb:
/// type: aws:iam:User
/// properties:
/// name: loadbalancer
/// path: /system/
/// tags:
/// tag-key: tag-value
/// lbAccessKey:
/// type: aws:iam:AccessKey
/// name: lb
/// properties:
/// user: ${lb.name}
/// lbRoUserPolicy:
/// type: aws:iam:UserPolicy
/// name: lb_ro
/// properties:
/// name: test
/// user: ${lb.name}
/// policy: ${lbRo.json}
/// variables:
/// lbRo:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - ec2:Describe*
/// resources:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM Users using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/user:User lb loadbalancer
/// ```
class User5 extends CustomResource {
  /// The ARN assigned by AWS for this user.
  late final Output<String> arn;

  /// When destroying this user, destroy even if it
  /// has non-provider-managed IAM access keys, login profile or MFA devices. Without <span pulumi-lang-nodejs="`forceDestroy`" pulumi-lang-dotnet="`ForceDestroy`" pulumi-lang-go="`forceDestroy`" pulumi-lang-python="`force_destroy`" pulumi-lang-yaml="`forceDestroy`" pulumi-lang-java="`forceDestroy`">`force_destroy`</span>
  /// a user with non-provider-managed access keys and login profile will fail to be destroyed.
  late final Output<bool?> forceDestroy;

  /// The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  late final Output<String> name;

  /// Path in which to create the user.
  late final Output<String?> path;

  /// The ARN of the policy that is used to set the permissions boundary for the user.
  late final Output<String?> permissionsBoundary;

  /// Key-value mapping of tags for the IAM user. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The [unique ID][1] assigned by AWS.
  late final Output<String> uniqueId;

  User5(
    String name, {
    UserArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.name = Output.createUnknown<String>();
    this.path = Output.createUnknown<String?>();
    this.permissionsBoundary = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.uniqueId = Output.createUnknown<String>();
  }
}
