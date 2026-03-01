import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_membership_args.dart';

/// Resource for managing an AWS QuickSight Role Membership.
///
/// > The role membership APIs are disabled for identities managed by QuickSight. This resource can only be used when the QuickSight account subscription uses the Active Directory or IAM Identity Center authentication method.
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
/// const example = new aws.quicksight.RoleMembership("example", {
///     memberName: "example-group",
///     role: "READER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RoleMembership("example",
///     member_name="example-group",
///     role="READER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.RoleMembership("example", new()
///     {
///         MemberName = "example-group",
///         Role = "READER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewRoleMembership(ctx, "example", &quicksight.RoleMembershipArgs{
/// 			MemberName: pulumi.String("example-group"),
/// 			Role:       pulumi.String("READER"),
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
/// import com.pulumi.aws.quicksight.RoleMembership;
/// import com.pulumi.aws.quicksight.RoleMembershipArgs;
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
///         var example = new RoleMembership("example", RoleMembershipArgs.builder()
///             .memberName("example-group")
///             .role("READER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:RoleMembership
///     properties:
///       memberName: example-group
///       role: READER
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Role Membership using a comma-delimited string combining the `aws_account_id`, `namespace`, `role`, and `member_name`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/roleMembership:RoleMembership example 012345678901,default,READER,example-group
/// ```
class RoleMembership extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Name of the group to be added to the role.
  late final pulumi.Output<String> memberName;

  /// Name of the namespace. Defaults to `default`.
  late final pulumi.Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> role;

  /// Creates a new [RoleMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleMembership]. {@macro pulumi_quicksight_role_membership_role_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleMembership(
    String name, {
    RoleMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:quicksight/roleMembership:RoleMembership',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.memberName = registerOutput<String>('memberName');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
