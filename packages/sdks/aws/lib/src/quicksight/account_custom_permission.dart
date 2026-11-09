import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_custom_permission_args.dart';
import 'account_custom_permission_state.dart';

/// Manages an AWS QuickSight Account Custom Permission.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.CustomPermissions("example", {
///     capabilities: {
///         printReports: "DENY",
///         shareDashboards: "DENY",
///     },
///     customPermissionsName: "example-permissions",
/// });
/// const exampleAccountCustomPermission = new aws.quicksight.AccountCustomPermission("example", {customPermissionsName: example.customPermissionsName});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.CustomPermissions("example",
///     capabilities={
///         "print_reports": "DENY",
///         "share_dashboards": "DENY",
///     },
///     custom_permissions_name="example-permissions")
/// example_account_custom_permission = aws.quicksight.AccountCustomPermission("example", custom_permissions_name=example.custom_permissions_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.CustomPermissions("example", new()
///     {
///         Capabilities = new Aws.Quicksight.Inputs.CustomPermissionsCapabilitiesArgs
///         {
///             PrintReports = "DENY",
///             ShareDashboards = "DENY",
///         },
///         CustomPermissionsName = "example-permissions",
///     });
///
///     var exampleAccountCustomPermission = new Aws.Quicksight.AccountCustomPermission("example", new()
///     {
///         CustomPermissionsName = example.CustomPermissionsName,
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
/// 		example, err := quicksight.NewCustomPermissions(ctx, "example", &quicksight.CustomPermissionsArgs{
/// 			Capabilities: &quicksight.CustomPermissionsCapabilitiesArgs{
/// 				PrintReports:    pulumi.String("DENY"),
/// 				ShareDashboards: pulumi.String("DENY"),
/// 			},
/// 			CustomPermissionsName: pulumi.String("example-permissions"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = quicksight.NewAccountCustomPermission(ctx, "example", &quicksight.AccountCustomPermissionArgs{
/// 			CustomPermissionsName: example.CustomPermissionsName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_quicksight_custom_permissions" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   capabilities {
///     print_reports    = "DENY"
///     share_dashboards = "DENY"
///   }
///   custom_permissions_name = "example-permissions"
/// }
/// resource "aws_quicksight_account_custom_permission" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   custom_permissions_name = aws_quicksight_custom_permissions.example.custom_permissions_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.CustomPermissions;
/// import com.pulumi.aws.quicksight.CustomPermissionsArgs;
/// import com.pulumi.aws.quicksight.inputs.CustomPermissionsCapabilitiesArgs;
/// import com.pulumi.aws.quicksight.AccountCustomPermission;
/// import com.pulumi.aws.quicksight.AccountCustomPermissionArgs;
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
///         var example = new CustomPermissions("example", CustomPermissionsArgs.builder()
///             .capabilities(CustomPermissionsCapabilitiesArgs.builder()
///                 .printReports("DENY")
///                 .shareDashboards("DENY")
///                 .build())
///             .customPermissionsName("example-permissions")
///             .build());
///
///         var exampleAccountCustomPermission = new AccountCustomPermission("exampleAccountCustomPermission", AccountCustomPermissionArgs.builder()
///             .customPermissionsName(example.customPermissionsName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:CustomPermissions
///     properties:
///       capabilities:
///         printReports: DENY
///         shareDashboards: DENY
///       customPermissionsName: example-permissions
///   exampleAccountCustomPermission:
///     type: aws:quicksight:AccountCustomPermission
///     name: example
///     properties:
///       customPermissionsName: ${example.customPermissionsName}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `awsAccountId` (String) AWS account ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import QuickSight Account Custom Permission using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/accountCustomPermission:AccountCustomPermission example 012345678900
/// ```
class AccountCustomPermission extends pulumi.CustomResource {
  /// AWS account ID. Defaults to the account ID determined from the provider configuration.
  late final pulumi.Output<String> awsAccountId;
  /// Name of the custom permissions profile to apply to the account.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> customPermissionsName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AccountCustomPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountCustomPermission]. {@macro pulumi_quicksight_account_custom_permission_account_custom_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountCustomPermission(
    String name, {
    AccountCustomPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/accountCustomPermission:AccountCustomPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    customPermissionsName = registerOutput<String>('customPermissionsName');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AccountCustomPermission] resource's state with the given [name] and [id].
  static AccountCustomPermission get(
    String name,
    pulumi.Input<String> id, {
    AccountCustomPermissionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountCustomPermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountCustomPermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/accountCustomPermission:AccountCustomPermission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    customPermissionsName = registerOutput<String>('customPermissionsName');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [AccountCustomPermission] resource.
  AccountCustomPermission.reference(String urn)
    : super(
        'aws:quicksight/accountCustomPermission:AccountCustomPermission',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    customPermissionsName = registerOutput<String>('customPermissionsName');
    region = registerOutput<String>('region');
  }
}
