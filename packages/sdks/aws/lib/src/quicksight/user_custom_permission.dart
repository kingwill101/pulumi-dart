import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_custom_permission_args.dart';
import 'user_custom_permission_state.dart';

/// Manages the custom permissions profile for a user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.UserCustomPermission("example", {
///     userName: exampleAwsQuicksightUser.userName,
///     customPermissionsName: exampleAwsQuicksightCustomPermissions.customPermissionsName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.UserCustomPermission("example",
///     user_name=example_aws_quicksight_user["userName"],
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
///     var example = new Aws.Quicksight.UserCustomPermission("example", new()
///     {
///         UserName = exampleAwsQuicksightUser.UserName,
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
/// 		_, err := quicksight.NewUserCustomPermission(ctx, "example", &quicksight.UserCustomPermissionArgs{
/// 			UserName:              pulumi.Any(exampleAwsQuicksightUser.UserName),
/// 			CustomPermissionsName: pulumi.Any(exampleAwsQuicksightCustomPermissions.CustomPermissionsName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_quicksight_usercustompermission" "example" {
///   user_name               = exampleAwsQuicksightUser.userName
///   custom_permissions_name = exampleAwsQuicksightCustomPermissions.customPermissionsName
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new UserCustomPermission("example", UserCustomPermissionArgs.builder()
///             .userName(exampleAwsQuicksightUser.userName())
///             .customPermissionsName(exampleAwsQuicksightCustomPermissions.customPermissionsName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:UserCustomPermission
///     properties:
///       userName: ${exampleAwsQuicksightUser.userName}
///       customPermissionsName: ${exampleAwsQuicksightCustomPermissions.customPermissionsName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight user custom permissions using a comma-delimited string combining the `awsAccountId`, `namespace`, and `userName`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/userCustomPermission:UserCustomPermission example 012345678901,default,user1
/// ```
class UserCustomPermission extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// Custom permissions profile name.
  late final pulumi.Output<String> customPermissionsName;
  /// Namespace that the user belongs to. Defaults to `default`.
  late final pulumi.Output<String> namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Username of the user.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  /// Creates a new [UserCustomPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserCustomPermission]. {@macro pulumi_quicksight_user_custom_permission_user_custom_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserCustomPermission(
    String name, {
    UserCustomPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/userCustomPermission:UserCustomPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    customPermissionsName = registerOutput<String>('customPermissionsName');
    namespace = registerOutput<String>('namespace');
    region = registerOutput<String>('region');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [UserCustomPermission] resource's state with the given [name] and [id].
  static UserCustomPermission get(
    String name,
    pulumi.Input<String> id, {
    UserCustomPermissionState? state,
  }) {
    return UserCustomPermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserCustomPermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/userCustomPermission:UserCustomPermission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    customPermissionsName = registerOutput<String>('customPermissionsName');
    namespace = registerOutput<String>('namespace');
    region = registerOutput<String>('region');
    userName = registerOutput<String>('userName');
  }
}
