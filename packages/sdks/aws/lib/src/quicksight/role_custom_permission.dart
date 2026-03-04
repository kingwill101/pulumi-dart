import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_custom_permission_args.dart';
import 'role_custom_permission_state.dart';

/// Manages the custom permissions that are associated with a role.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.RoleCustomPermission("example", {
///     role: "READER",
///     customPermissionsName: exampleAwsQuicksightCustomPermissions.customPermissionsName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RoleCustomPermission("example",
///     role="READER",
///     custom_permissions_name=example_aws_quicksight_custom_permissions["customPermissionsName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.RoleCustomPermission("example", new()
///     {
///         Role = "READER",
///         CustomPermissionsName = exampleAwsQuicksightCustomPermissions.CustomPermissionsName,
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
/// 		_, err := quicksight.NewRoleCustomPermission(ctx, "example", &quicksight.RoleCustomPermissionArgs{
/// 			Role:                  pulumi.String("READER"),
/// 			CustomPermissionsName: pulumi.Any(exampleAwsQuicksightCustomPermissions.CustomPermissionsName),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RoleCustomPermission("example", RoleCustomPermissionArgs.builder()
///             .role("READER")
///             .customPermissionsName(exampleAwsQuicksightCustomPermissions.customPermissionsName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:RoleCustomPermission
///     properties:
///       role: READER
///       customPermissionsName: ${exampleAwsQuicksightCustomPermissions.customPermissionsName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight role custom permissions using a comma-delimited string combining the `aws_account_id`, `namespace`, and `role`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/roleCustomPermission:RoleCustomPermission example 012345678901,default,READER
/// ```
class RoleCustomPermission extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Custom permissions profile name.
  late final pulumi.Output<String> customPermissionsName;

  /// Namespace containing the role. Defaults to `default`.
  late final pulumi.Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Role. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> role;

  /// Creates a new [RoleCustomPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleCustomPermission]. {@macro pulumi_quicksight_role_custom_permission_role_custom_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleCustomPermission(
    String name, {
    RoleCustomPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:quicksight/roleCustomPermission:RoleCustomPermission',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    customPermissionsName = registerOutput<String>('customPermissionsName');
    namespace = registerOutput<String>('namespace');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [RoleCustomPermission] resource's state with the given [name] and [id].
  static RoleCustomPermission get(
    String name,
    pulumi.Input<String> id, {
    RoleCustomPermissionState? state,
  }) {
    return RoleCustomPermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoleCustomPermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:quicksight/roleCustomPermission:RoleCustomPermission',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    customPermissionsName = registerOutput<String>('customPermissionsName');
    namespace = registerOutput<String>('namespace');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
  }
}
