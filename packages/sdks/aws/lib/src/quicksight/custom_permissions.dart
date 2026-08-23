import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_permissions_args.dart';
import 'custom_permissions_capabilities.dart';
import 'custom_permissions_state.dart';

/// Manages a QuickSight custom permissions profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.CustomPermissions("example", {
///     customPermissionsName: "example-permissions",
///     capabilities: {
///         printReports: "DENY",
///         shareDashboards: "DENY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.CustomPermissions("example",
///     custom_permissions_name="example-permissions",
///     capabilities={
///         "print_reports": "DENY",
///         "share_dashboards": "DENY",
///     })
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
///         CustomPermissionsName = "example-permissions",
///         Capabilities = new Aws.Quicksight.Inputs.CustomPermissionsCapabilitiesArgs
///         {
///             PrintReports = "DENY",
///             ShareDashboards = "DENY",
///         },
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
/// 		_, err := quicksight.NewCustomPermissions(ctx, "example", &quicksight.CustomPermissionsArgs{
/// 			CustomPermissionsName: pulumi.String("example-permissions"),
/// 			Capabilities: &quicksight.CustomPermissionsCapabilitiesArgs{
/// 				PrintReports:    pulumi.String("DENY"),
/// 				ShareDashboards: pulumi.String("DENY"),
/// 			},
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
/// resource "aws_quicksight_custompermissions" "example" {
///   custom_permissions_name = "example-permissions"
///   capabilities = {
///     print_reports    = "DENY"
///     share_dashboards = "DENY"
///   }
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
///             .customPermissionsName("example-permissions")
///             .capabilities(CustomPermissionsCapabilitiesArgs.builder()
///                 .printReports("DENY")
///                 .shareDashboards("DENY")
///                 .build())
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
///       customPermissionsName: example-permissions
///       capabilities:
///         printReports: DENY
///         shareDashboards: DENY
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight custom permissions profile using the AWS account ID and custom permissions profile name separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/customPermissions:CustomPermissions example 123456789012,example-permissions
/// ```
class CustomPermissions extends pulumi.CustomResource {
  /// ARN of the custom permissions profile.
  late final pulumi.Output<String> arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// Actions to include in the custom permissions profile. See capabilities.
  late final pulumi.Output<CustomPermissionsCapabilities> capabilities;
  /// Custom permissions profile name.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> customPermissionsName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CustomPermissions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomPermissions]. {@macro pulumi_quicksight_custom_permissions_custom_permissions_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomPermissions(
    String name, {
    CustomPermissionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/customPermissions:CustomPermissions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    capabilities = registerOutput<CustomPermissionsCapabilities>('capabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomPermissionsCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customPermissionsName = registerOutput<String>('customPermissionsName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [CustomPermissions] resource's state with the given [name] and [id].
  static CustomPermissions get(
    String name,
    pulumi.Input<String> id, {
    CustomPermissionsState? state,
  }) {
    return CustomPermissions._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomPermissions._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/customPermissions:CustomPermissions',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    capabilities = registerOutput<CustomPermissionsCapabilities>('capabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomPermissionsCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customPermissionsName = registerOutput<String>('customPermissionsName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
