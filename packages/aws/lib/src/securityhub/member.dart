import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_args.dart';

/// Provides a Security Hub member resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleMember = new aws.securityhub.Member("example", {
///     accountId: "123456789012",
///     email: "example@example.com",
///     invite: true,
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_member = aws.securityhub.Member("example",
///     account_id="123456789012",
///     email="example@example.com",
///     invite=True,
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.Account("example");
///
///     var exampleMember = new Aws.SecurityHub.Member("example", new()
///     {
///         AccountId = "123456789012",
///         Email = "example@example.com",
///         Invite = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewMember(ctx, "example", &securityhub.MemberArgs{
/// 			AccountId: pulumi.String("123456789012"),
/// 			Email:     pulumi.String("example@example.com"),
/// 			Invite:    pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.Member;
/// import com.pulumi.aws.securityhub.MemberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Account("example");
///
///         var exampleMember = new Member("exampleMember", MemberArgs.builder()
///             .accountId("123456789012")
///             .email("example@example.com")
///             .invite(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:Account
///   exampleMember:
///     type: aws:securityhub:Member
///     name: example
///     properties:
///       accountId: '123456789012'
///       email: example@example.com
///       invite: true
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub members using their account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/member:Member example 123456789012
/// ```
class Member extends pulumi.CustomResource {
  /// The ID of the member AWS account.
  late final pulumi.Output<String> accountId;

  /// The email of the member AWS account.
  late final pulumi.Output<String?> email;

  /// Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  late final pulumi.Output<bool?> invite;

  /// The ID of the master Security Hub AWS account.
  late final pulumi.Output<String> masterId;

  /// The status of the member account relationship.
  late final pulumi.Output<String> memberStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Member].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Member]. {@macro pulumi_securityhub_member_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Member(String name, {MemberArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:securityhub/member:Member',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.accountId = registerOutput<String>('accountId');
    this.email = registerOutput<String?>('email');
    this.invite = registerOutput<bool?>('invite');
    this.masterId = registerOutput<String>('masterId');
    this.memberStatus = registerOutput<String>('memberStatus');
    this.region = registerOutput<String>('region');
  }
}
