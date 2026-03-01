import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_args.dart';
import 'permission_state.dart';
import 'permission_timeouts.dart';

/// Manages an AWS RAM (Resource Access Manager) Permission.
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
/// const example = new aws.ram.Permission("example", {
///     name: "custom-backup",
///     policyTemplate: `{
///     \\"Effect\\": \\"Allow\\",
///     \\"Action\\": [
/// \\t\\"backup:ListProtectedResourcesByBackupVault\\",
/// \\t\\"backup:ListRecoveryPointsByBackupVault\\",
/// \\t\\"backup:DescribeRecoveryPoint\\",
/// \\t\\"backup:DescribeBackupVault\\"
///     ]
/// }
/// `,
///     resourceType: "backup:BackupVault",
///     tags: {
///         Name: "custom-backup",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.Permission("example",
///     name="custom-backup",
///     policy_template="""{
///     \"Effect\": \"Allow\",
///     \"Action\": [
/// \t\"backup:ListProtectedResourcesByBackupVault\",
/// \t\"backup:ListRecoveryPointsByBackupVault\",
/// \t\"backup:DescribeRecoveryPoint\",
/// \t\"backup:DescribeBackupVault\"
///     ]
/// }
/// """,
///     resource_type="backup:BackupVault",
///     tags={
///         "Name": "custom-backup",
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
///     var example = new Aws.Ram.Permission("example", new()
///     {
///         Name = "custom-backup",
///         PolicyTemplate = @"{
///     \""Effect\"": \""Allow\"",
///     \""Action\"": [
/// \t\""backup:ListProtectedResourcesByBackupVault\"",
/// \t\""backup:ListRecoveryPointsByBackupVault\"",
/// \t\""backup:DescribeRecoveryPoint\"",
/// \t\""backup:DescribeBackupVault\""
///     ]
/// }
/// ",
///         ResourceType = "backup:BackupVault",
///         Tags =
///         {
///             { "Name", "custom-backup" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ram.NewPermission(ctx, "example", &ram.PermissionArgs{
/// 			Name: pulumi.String("custom-backup"),
/// 			PolicyTemplate: pulumi.String(`{
///     \"Effect\": \"Allow\",
///     \"Action\": [
/// \t\"backup:ListProtectedResourcesByBackupVault\",
/// \t\"backup:ListRecoveryPointsByBackupVault\",
/// \t\"backup:DescribeRecoveryPoint\",
/// \t\"backup:DescribeBackupVault\"
///     ]
/// }
/// `),
/// 			ResourceType: pulumi.String("backup:BackupVault"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("custom-backup"),
/// 			},
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
/// import com.pulumi.aws.ram.Permission;
/// import com.pulumi.aws.ram.PermissionArgs;
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
///         var example = new Permission("example", PermissionArgs.builder()
///             .name("custom-backup")
///             .policyTemplate("""
/// {
///     \"Effect\": \"Allow\",
///     \"Action\": [
/// \t\"backup:ListProtectedResourcesByBackupVault\",
/// \t\"backup:ListRecoveryPointsByBackupVault\",
/// \t\"backup:DescribeRecoveryPoint\",
/// \t\"backup:DescribeBackupVault\"
///     ]
/// }
///             """)
///             .resourceType("backup:BackupVault")
///             .tags(Map.of("Name", "custom-backup"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ram:Permission
///     properties:
///       name: custom-backup
///       policyTemplate: |
///         {
///             \"Effect\": \"Allow\",
///             \"Action\": [
///         \t\"backup:ListProtectedResourcesByBackupVault\",
///         \t\"backup:ListRecoveryPointsByBackupVault\",
///         \t\"backup:DescribeRecoveryPoint\",
///         \t\"backup:DescribeBackupVault\"
///             ]
///         }
///       resourceType: backup:BackupVault
///       tags:
///         Name: custom-backup
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) Permission ARN.
///
///
/// Using `pulumi import`, import RAM (Resource Access Manager) Permission using the `example_id_arg`. For example:
///
/// ```sh
/// $ pulumi import aws:ram/permission:Permission example arn:aws:ram:us-west-1:123456789012:permission/test-permission
/// ```
class Permission extends pulumi.CustomResource {
  /// ARN of the permission.
  late final pulumi.Output<String> arn;
  /// Specifies whether the version of the managed permission used by this resource share is the default version for this managed permission.
  late final pulumi.Output<bool> defaultVersion;
  /// Specifies the name of the customer managed permission. The name must be unique within the AWS Region.
  late final pulumi.Output<String> name;
  /// A string in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  late final pulumi.Output<String> policyTemplate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the name of the resource type that this customer managed permission applies to. The format is `<service-code>:<resource-type>` and is not case sensitive.
  late final pulumi.Output<String> resourceType;
  /// The current status of the permission.
  late final pulumi.Output<String> status;
  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<PermissionTimeouts?> timeouts;
  /// The version of the permission associated with this resource share.
  late final pulumi.Output<String> version;

  /// Creates a new [Permission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Permission]. {@macro pulumi_ram_permission_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Permission(
    String name, {
    PermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/permission:Permission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersion = registerOutput<bool>('defaultVersion');
    this.name = registerOutput<String>('name');
    this.policyTemplate = registerOutput<String>('policyTemplate');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PermissionTimeouts?>('timeouts');
    this.version = registerOutput<String>('version');
  }

  /// Gets an existing [Permission] resource's state with the given [name] and [id].
  static Permission get(
    String name,
    pulumi.Input<String> id, {
    PermissionState? state,
  }) {
    return Permission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Permission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/permission:Permission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersion = registerOutput<bool>('defaultVersion');
    this.name = registerOutput<String>('name');
    this.policyTemplate = registerOutput<String>('policyTemplate');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PermissionTimeouts?>('timeouts');
    this.version = registerOutput<String>('version');
  }
}
