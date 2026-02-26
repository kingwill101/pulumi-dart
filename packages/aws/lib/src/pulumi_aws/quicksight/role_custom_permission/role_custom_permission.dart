import 'package:pulumi/pulumi.dart';
import 'role_custom_permission_args.dart';

/// Manages the custom permissions that are associated with a role.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.RoleCustomPermission("example", {
/// role: "READER",
/// customPermissionsName: exampleAwsQuicksightCustomPermissions.customPermissionsName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RoleCustomPermission("example",
/// role="READER",
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
/// var example = new Aws.Quicksight.RoleCustomPermission("example", new()
/// {
/// Role = "READER",
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
/// _, err := quicksight.NewRoleCustomPermission(ctx, "example", &quicksight.RoleCustomPermissionArgs{
/// Role:                  pulumi.String("READER"),
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
/// import com.pulumi.aws.quicksight.RoleCustomPermission;
/// import com.pulumi.aws.quicksight.RoleCustomPermissionArgs;
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
/// var example = new RoleCustomPermission("example", RoleCustomPermissionArgs.builder()
/// .role("READER")
/// .customPermissionsName(exampleAwsQuicksightCustomPermissions.customPermissionsName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:RoleCustomPermission
/// properties:
/// role: READER
/// customPermissionsName: ${exampleAwsQuicksightCustomPermissions.customPermissionsName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight role custom permissions using a comma-delimited string combining the <span pulumi-lang-nodejs="`awsAccountId`" pulumi-lang-dotnet="`AwsAccountId`" pulumi-lang-go="`awsAccountId`" pulumi-lang-python="`aws_account_id`" pulumi-lang-yaml="`awsAccountId`" pulumi-lang-java="`awsAccountId`">`aws_account_id`</span>, <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span>, and <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/roleCustomPermission:RoleCustomPermission example 012345678901,default,READER
/// ```
class RoleCustomPermission extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Custom permissions profile name.
  late final Output<String> customPermissionsName;

  /// Namespace containing the role. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  late final Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Role. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  late final Output<String> role;

  RoleCustomPermission(
    String name, {
    RoleCustomPermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/roleCustomPermission:RoleCustomPermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.customPermissionsName =
        registerOutput<String>('customPermissionsName');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
