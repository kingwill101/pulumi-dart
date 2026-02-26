import 'package:pulumi/pulumi.dart';
import 'user_custom_permission_args.dart';

/// Manages the custom permissions profile for a user.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.UserCustomPermission("example", {
/// userName: exampleAwsQuicksightUser.userName,
/// customPermissionsName: exampleAwsQuicksightCustomPermissions.customPermissionsName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.UserCustomPermission("example",
/// user_name=example_aws_quicksight_user["userName"],
/// custom_permissions_name=example_aws_quicksight_custom_permissions["customPermissionsName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Quicksight.UserCustomPermission("example", new()
/// {
/// UserName = exampleAwsQuicksightUser.UserName,
/// CustomPermissionsName = exampleAwsQuicksightCustomPermissions.CustomPermissionsName,
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
/// _, err := quicksight.NewUserCustomPermission(ctx, "example", &quicksight.UserCustomPermissionArgs{
/// UserName:              pulumi.Any(exampleAwsQuicksightUser.UserName),
/// CustomPermissionsName: pulumi.Any(exampleAwsQuicksightCustomPermissions.CustomPermissionsName),
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
/// import com.pulumi.aws.quicksight.UserCustomPermission;
/// import com.pulumi.aws.quicksight.UserCustomPermissionArgs;
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
/// var example = new UserCustomPermission("example", UserCustomPermissionArgs.builder()
/// .userName(exampleAwsQuicksightUser.userName())
/// .customPermissionsName(exampleAwsQuicksightCustomPermissions.customPermissionsName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:UserCustomPermission
/// properties:
/// userName: ${exampleAwsQuicksightUser.userName}
/// customPermissionsName: ${exampleAwsQuicksightCustomPermissions.customPermissionsName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight user custom permissions using a comma-delimited string combining the <span pulumi-lang-nodejs="`awsAccountId`" pulumi-lang-dotnet="`AwsAccountId`" pulumi-lang-go="`awsAccountId`" pulumi-lang-python="`aws_account_id`" pulumi-lang-yaml="`awsAccountId`" pulumi-lang-java="`awsAccountId`">`aws_account_id`</span>, <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span>, and <span pulumi-lang-nodejs="`userName`" pulumi-lang-dotnet="`UserName`" pulumi-lang-go="`userName`" pulumi-lang-python="`user_name`" pulumi-lang-yaml="`userName`" pulumi-lang-java="`userName`">`user_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/userCustomPermission:UserCustomPermission example 012345678901,default,user1
/// ```
class UserCustomPermission extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Custom permissions profile name.
  late final Output<String> customPermissionsName;

  /// Namespace that the user belongs to. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  late final Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Username of the user.
  ///
  /// The following arguments are optional:
  late final Output<String> userName;

  UserCustomPermission(
    String name, {
    UserCustomPermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/userCustomPermission:UserCustomPermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = Output.createUnknown<String>();
    this.customPermissionsName = Output.createUnknown<String>();
    this.namespace = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.userName = Output.createUnknown<String>();
  }
}
