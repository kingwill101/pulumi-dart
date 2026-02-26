import 'package:pulumi/pulumi.dart';
import 'role_membership_args.dart';

/// Resource for managing an AWS QuickSight Role Membership.
///
/// > The role membership APIs are disabled for identities managed by QuickSight. This resource can only be used when the QuickSight account subscription uses the Active Directory or IAM Identity Center authentication method.
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
/// const example = new aws.quicksight.RoleMembership("example", {
/// memberName: "example-group",
/// role: "READER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RoleMembership("example",
/// member_name="example-group",
/// role="READER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Quicksight.RoleMembership("example", new()
/// {
/// MemberName = "example-group",
/// Role = "READER",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewRoleMembership(ctx, "example", &quicksight.RoleMembershipArgs{
/// MemberName: pulumi.String("example-group"),
/// Role:       pulumi.String("READER"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new RoleMembership("example", RoleMembershipArgs.builder()
/// .memberName("example-group")
/// .role("READER")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:RoleMembership
/// properties:
/// memberName: example-group
/// role: READER
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Role Membership using a comma-delimited string combining the <span pulumi-lang-nodejs="`awsAccountId`" pulumi-lang-dotnet="`AwsAccountId`" pulumi-lang-go="`awsAccountId`" pulumi-lang-python="`aws_account_id`" pulumi-lang-yaml="`awsAccountId`" pulumi-lang-java="`awsAccountId`">`aws_account_id`</span>, <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span>, <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>, and <span pulumi-lang-nodejs="`memberName`" pulumi-lang-dotnet="`MemberName`" pulumi-lang-go="`memberName`" pulumi-lang-python="`member_name`" pulumi-lang-yaml="`memberName`" pulumi-lang-java="`memberName`">`member_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/roleMembership:RoleMembership example 012345678901,default,READER,example-group
/// ```
class RoleMembership extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Name of the group to be added to the role.
  late final Output<String> memberName;

  /// Name of the namespace. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  late final Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  late final Output<String> role;

  RoleMembership(
    String name, {
    RoleMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/roleMembership:RoleMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = Output.createUnknown<String>();
    this.memberName = Output.createUnknown<String>();
    this.namespace = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
