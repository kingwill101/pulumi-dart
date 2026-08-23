import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';
import 'pool_capacity.dart';
import 'pool_state.dart';
import 'pool_timeouts.dart';

/// Manages a WorkSpaces Pool in the AWS WorkSpaces service.
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
/// const example = aws.workspaces.getBundle({
///     owner: "AMAZON",
///     name: "Standard with Windows 10 (Server 2022 based) (WSP)",
/// });
/// const exampleDirectory = new aws.workspaces.Directory("example", {
///     subnetIds: [
///         exampleC.id,
///         exampleD.id,
///     ],
///     workspaceType: "POOLS",
///     workspaceDirectoryName: "example-directory",
///     workspaceDirectoryDescription: "Example WorkSpaces Directory for Pools",
///     userIdentityType: "CUSTOMER_MANAGED",
/// });
/// const examplePool = new aws.workspaces.Pool("example", {
///     bundleId: example.then(example => example.id),
///     poolName: "example-pool",
///     description: "Example WorkSpaces Pool",
///     directoryId: exampleDirectory.directoryId,
///     runningMode: "AUTO_STOP",
///     capacity: {
///         desiredUserSessions: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_bundle(owner="AMAZON",
///     name="Standard with Windows 10 (Server 2022 based) (WSP)")
/// example_directory = aws.workspaces.Directory("example",
///     subnet_ids=[
///         example_c["id"],
///         example_d["id"],
///     ],
///     workspace_type="POOLS",
///     workspace_directory_name="example-directory",
///     workspace_directory_description="Example WorkSpaces Directory for Pools",
///     user_identity_type="CUSTOMER_MANAGED")
/// example_pool = aws.workspaces.Pool("example",
///     bundle_id=example.id,
///     pool_name="example-pool",
///     description="Example WorkSpaces Pool",
///     directory_id=example_directory.directory_id,
///     running_mode="AUTO_STOP",
///     capacity={
///         "desired_user_sessions": 10,
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
///     var example = Aws.Workspaces.GetBundle.Invoke(new()
///     {
///         Owner = "AMAZON",
///         Name = "Standard with Windows 10 (Server 2022 based) (WSP)",
///     });
///
///     var exampleDirectory = new Aws.Workspaces.Directory("example", new()
///     {
///         SubnetIds = new[]
///         {
///             exampleC.Id,
///             exampleD.Id,
///         },
///         WorkspaceType = "POOLS",
///         WorkspaceDirectoryName = "example-directory",
///         WorkspaceDirectoryDescription = "Example WorkSpaces Directory for Pools",
///         UserIdentityType = "CUSTOMER_MANAGED",
///     });
///
///     var examplePool = new Aws.Workspaces.Pool("example", new()
///     {
///         BundleId = example.Apply(getBundleResult => getBundleResult.Id),
///         PoolName = "example-pool",
///         Description = "Example WorkSpaces Pool",
///         DirectoryId = exampleDirectory.DirectoryId,
///         RunningMode = "AUTO_STOP",
///         Capacity = new Aws.Workspaces.Inputs.PoolCapacityArgs
///         {
///             DesiredUserSessions = 10,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := workspaces.GetBundle(ctx, &workspaces.GetBundleArgs{
/// 			Owner: pulumi.StringRef("AMAZON"),
/// 			Name:  pulumi.StringRef("Standard with Windows 10 (Server 2022 based) (WSP)"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDirectory, err := workspaces.NewDirectory(ctx, "example", &workspaces.DirectoryArgs{
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleC.Id,
/// 				exampleD.Id,
/// 			},
/// 			WorkspaceType:                 pulumi.String("POOLS"),
/// 			WorkspaceDirectoryName:        pulumi.String("example-directory"),
/// 			WorkspaceDirectoryDescription: pulumi.String("Example WorkSpaces Directory for Pools"),
/// 			UserIdentityType:              pulumi.String("CUSTOMER_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspaces.NewPool(ctx, "example", &workspaces.PoolArgs{
/// 			BundleId:    pulumi.String(example.Id),
/// 			PoolName:    pulumi.String("example-pool"),
/// 			Description: pulumi.String("Example WorkSpaces Pool"),
/// 			DirectoryId: exampleDirectory.DirectoryId,
/// 			RunningMode: pulumi.String("AUTO_STOP"),
/// 			Capacity: &workspaces.PoolCapacityArgs{
/// 				DesiredUserSessions: pulumi.Int(10),
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
/// data "aws_workspaces_getbundle" "example" {
///   owner = "AMAZON"
///   name  = "Standard with Windows 10 (Server 2022 based) (WSP)"
/// }
///
/// resource "aws_workspaces_directory" "example" {
///   subnet_ids                      = [exampleC.id, exampleD.id]
///   workspace_type                  = "POOLS"
///   workspace_directory_name        = "example-directory"
///   workspace_directory_description = "Example WorkSpaces Directory for Pools"
///   user_identity_type              = "CUSTOMER_MANAGED"
/// }
/// resource "aws_workspaces_pool" "example" {
///   bundle_id    = data.aws_workspaces_getbundle.example.id
///   pool_name    = "example-pool"
///   description  = "Example WorkSpaces Pool"
///   directory_id = aws_workspaces_directory.example.directory_id
///   running_mode = "AUTO_STOP"
///   capacity = {
///     desired_user_sessions = 10
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetBundleArgs;
/// import com.pulumi.aws.workspaces.Directory;
/// import com.pulumi.aws.workspaces.DirectoryArgs;
/// import com.pulumi.aws.workspaces.Pool;
/// import com.pulumi.aws.workspaces.PoolArgs;
/// import com.pulumi.aws.workspaces.inputs.PoolCapacityArgs;
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
///         final var example = WorkspacesFunctions.getBundle(GetBundleArgs.builder()
///             .owner("AMAZON")
///             .name("Standard with Windows 10 (Server 2022 based) (WSP)")
///             .build());
///
///         var exampleDirectory = new Directory("exampleDirectory", DirectoryArgs.builder()
///             .subnetIds(
///                 exampleC.id(),
///                 exampleD.id())
///             .workspaceType("POOLS")
///             .workspaceDirectoryName("example-directory")
///             .workspaceDirectoryDescription("Example WorkSpaces Directory for Pools")
///             .userIdentityType("CUSTOMER_MANAGED")
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .bundleId(example.id())
///             .poolName("example-pool")
///             .description("Example WorkSpaces Pool")
///             .directoryId(exampleDirectory.directoryId())
///             .runningMode("AUTO_STOP")
///             .capacity(PoolCapacityArgs.builder()
///                 .desiredUserSessions(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDirectory:
///     type: aws:workspaces:Directory
///     name: example
///     properties:
///       subnetIds:
///         - ${exampleC.id}
///         - ${exampleD.id}
///       workspaceType: POOLS
///       workspaceDirectoryName: example-directory
///       workspaceDirectoryDescription: Example WorkSpaces Directory for Pools
///       userIdentityType: CUSTOMER_MANAGED
///   examplePool:
///     type: aws:workspaces:Pool
///     name: example
///     properties:
///       bundleId: ${example.id}
///       poolName: example-pool
///       description: Example WorkSpaces Pool
///       directoryId: ${exampleDirectory.directoryId}
///       runningMode: AUTO_STOP
///       capacity:
///         desiredUserSessions: 10
/// variables:
///   example:
///     fn::invoke:
///       function: aws:workspaces:getBundle
///       arguments:
///         owner: AMAZON
///         name: Standard with Windows 10 (Server 2022 based) (WSP)
/// ```
///
///
/// ### With Application Settings
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspaces.Pool("example", {
///     bundleId: exampleAwsWorkspacesBundle.id,
///     poolName: "example-pool",
///     description: "Example WorkSpaces Pool with Application Settings",
///     directoryId: exampleAwsWorkspacesDirectory.directoryId,
///     runningMode: "AUTO_STOP",
///     capacity: {
///         desiredUserSessions: 10,
///     },
///     applicationSettings: [{
///         status: "ENABLED",
///         settingsGroup: "my-settings-group",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.Pool("example",
///     bundle_id=example_aws_workspaces_bundle["id"],
///     pool_name="example-pool",
///     description="Example WorkSpaces Pool with Application Settings",
///     directory_id=example_aws_workspaces_directory["directoryId"],
///     running_mode="AUTO_STOP",
///     capacity={
///         "desired_user_sessions": 10,
///     },
///     application_settings=[{
///         "status": "ENABLED",
///         "settings_group": "my-settings-group",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Workspaces.Pool("example", new()
///     {
///         BundleId = exampleAwsWorkspacesBundle.Id,
///         PoolName = "example-pool",
///         Description = "Example WorkSpaces Pool with Application Settings",
///         DirectoryId = exampleAwsWorkspacesDirectory.DirectoryId,
///         RunningMode = "AUTO_STOP",
///         Capacity = new Aws.Workspaces.Inputs.PoolCapacityArgs
///         {
///             DesiredUserSessions = 10,
///         },
///         ApplicationSettings = new[]
///         {
///             new Aws.Workspaces.Inputs.PoolApplicationSettingArgs
///             {
///                 Status = "ENABLED",
///                 SettingsGroup = "my-settings-group",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.NewPool(ctx, "example", &workspaces.PoolArgs{
/// 			BundleId:    pulumi.Any(exampleAwsWorkspacesBundle.Id),
/// 			PoolName:    pulumi.String("example-pool"),
/// 			Description: pulumi.String("Example WorkSpaces Pool with Application Settings"),
/// 			DirectoryId: pulumi.Any(exampleAwsWorkspacesDirectory.DirectoryId),
/// 			RunningMode: pulumi.String("AUTO_STOP"),
/// 			Capacity: &workspaces.PoolCapacityArgs{
/// 				DesiredUserSessions: pulumi.Int(10),
/// 			},
/// 			ApplicationSettings: workspaces.PoolApplicationSettingArray{
/// 				&workspaces.PoolApplicationSettingArgs{
/// 					Status:        pulumi.String("ENABLED"),
/// 					SettingsGroup: pulumi.String("my-settings-group"),
/// 				},
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
/// resource "aws_workspaces_pool" "example" {
///   bundle_id    = exampleAwsWorkspacesBundle.id
///   pool_name    = "example-pool"
///   description  = "Example WorkSpaces Pool with Application Settings"
///   directory_id = exampleAwsWorkspacesDirectory.directoryId
///   running_mode = "AUTO_STOP"
///   capacity = {
///     desired_user_sessions = 10
///   }
///   application_settings {
///     status         = "ENABLED"
///     settings_group = "my-settings-group"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.Pool;
/// import com.pulumi.aws.workspaces.PoolArgs;
/// import com.pulumi.aws.workspaces.inputs.PoolCapacityArgs;
/// import com.pulumi.aws.workspaces.inputs.PoolApplicationSettingArgs;
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
///         var example = new Pool("example", PoolArgs.builder()
///             .bundleId(exampleAwsWorkspacesBundle.id())
///             .poolName("example-pool")
///             .description("Example WorkSpaces Pool with Application Settings")
///             .directoryId(exampleAwsWorkspacesDirectory.directoryId())
///             .runningMode("AUTO_STOP")
///             .capacity(PoolCapacityArgs.builder()
///                 .desiredUserSessions(10)
///                 .build())
///             .applicationSettings(PoolApplicationSettingArgs.builder()
///                 .status("ENABLED")
///                 .settingsGroup("my-settings-group")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspaces:Pool
///     properties:
///       bundleId: ${exampleAwsWorkspacesBundle.id}
///       poolName: example-pool
///       description: Example WorkSpaces Pool with Application Settings
///       directoryId: ${exampleAwsWorkspacesDirectory.directoryId}
///       runningMode: AUTO_STOP
///       capacity:
///         desiredUserSessions: 10
///       applicationSettings:
///         - status: ENABLED
///           settingsGroup: my-settings-group
/// ```
///
///
/// ### With Timeout Settings
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspaces.Pool("example", {
///     bundleId: exampleAwsWorkspacesBundle.id,
///     poolName: "example-pool",
///     description: "Example WorkSpaces Pool with Timeout Settings",
///     directoryId: exampleAwsWorkspacesDirectory.directoryId,
///     runningMode: "AUTO_STOP",
///     capacity: {
///         desiredUserSessions: 10,
///     },
///     timeoutSettings: [{
///         disconnectTimeoutInSeconds: 900,
///         idleDisconnectTimeoutInSeconds: 900,
///         maxUserDurationInSeconds: 14400,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.Pool("example",
///     bundle_id=example_aws_workspaces_bundle["id"],
///     pool_name="example-pool",
///     description="Example WorkSpaces Pool with Timeout Settings",
///     directory_id=example_aws_workspaces_directory["directoryId"],
///     running_mode="AUTO_STOP",
///     capacity={
///         "desired_user_sessions": 10,
///     },
///     timeout_settings=[{
///         "disconnect_timeout_in_seconds": 900,
///         "idle_disconnect_timeout_in_seconds": 900,
///         "max_user_duration_in_seconds": 14400,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Workspaces.Pool("example", new()
///     {
///         BundleId = exampleAwsWorkspacesBundle.Id,
///         PoolName = "example-pool",
///         Description = "Example WorkSpaces Pool with Timeout Settings",
///         DirectoryId = exampleAwsWorkspacesDirectory.DirectoryId,
///         RunningMode = "AUTO_STOP",
///         Capacity = new Aws.Workspaces.Inputs.PoolCapacityArgs
///         {
///             DesiredUserSessions = 10,
///         },
///         TimeoutSettings = new[]
///         {
///             new Aws.Workspaces.Inputs.PoolTimeoutSettingArgs
///             {
///                 DisconnectTimeoutInSeconds = 900,
///                 IdleDisconnectTimeoutInSeconds = 900,
///                 MaxUserDurationInSeconds = 14400,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.NewPool(ctx, "example", &workspaces.PoolArgs{
/// 			BundleId:    pulumi.Any(exampleAwsWorkspacesBundle.Id),
/// 			PoolName:    pulumi.String("example-pool"),
/// 			Description: pulumi.String("Example WorkSpaces Pool with Timeout Settings"),
/// 			DirectoryId: pulumi.Any(exampleAwsWorkspacesDirectory.DirectoryId),
/// 			RunningMode: pulumi.String("AUTO_STOP"),
/// 			Capacity: &workspaces.PoolCapacityArgs{
/// 				DesiredUserSessions: pulumi.Int(10),
/// 			},
/// 			TimeoutSettings: workspaces.PoolTimeoutSettingArray{
/// 				&workspaces.PoolTimeoutSettingArgs{
/// 					DisconnectTimeoutInSeconds:     pulumi.Int(900),
/// 					IdleDisconnectTimeoutInSeconds: pulumi.Int(900),
/// 					MaxUserDurationInSeconds:       pulumi.Int(14400),
/// 				},
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
/// resource "aws_workspaces_pool" "example" {
///   bundle_id    = exampleAwsWorkspacesBundle.id
///   pool_name    = "example-pool"
///   description  = "Example WorkSpaces Pool with Timeout Settings"
///   directory_id = exampleAwsWorkspacesDirectory.directoryId
///   running_mode = "AUTO_STOP"
///   capacity = {
///     desired_user_sessions = 10
///   }
///   timeout_settings {
///     disconnect_timeout_in_seconds      = 900
///     idle_disconnect_timeout_in_seconds = 900
///     max_user_duration_in_seconds       = 14400
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.Pool;
/// import com.pulumi.aws.workspaces.PoolArgs;
/// import com.pulumi.aws.workspaces.inputs.PoolCapacityArgs;
/// import com.pulumi.aws.workspaces.inputs.PoolTimeoutSettingArgs;
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
///         var example = new Pool("example", PoolArgs.builder()
///             .bundleId(exampleAwsWorkspacesBundle.id())
///             .poolName("example-pool")
///             .description("Example WorkSpaces Pool with Timeout Settings")
///             .directoryId(exampleAwsWorkspacesDirectory.directoryId())
///             .runningMode("AUTO_STOP")
///             .capacity(PoolCapacityArgs.builder()
///                 .desiredUserSessions(10)
///                 .build())
///             .timeoutSettings(PoolTimeoutSettingArgs.builder()
///                 .disconnectTimeoutInSeconds(900)
///                 .idleDisconnectTimeoutInSeconds(900)
///                 .maxUserDurationInSeconds(14400)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspaces:Pool
///     properties:
///       bundleId: ${exampleAwsWorkspacesBundle.id}
///       poolName: example-pool
///       description: Example WorkSpaces Pool with Timeout Settings
///       directoryId: ${exampleAwsWorkspacesDirectory.directoryId}
///       runningMode: AUTO_STOP
///       capacity:
///         desiredUserSessions: 10
///       timeoutSettings:
///         - disconnectTimeoutInSeconds: 900
///           idleDisconnectTimeoutInSeconds: 900
///           maxUserDurationInSeconds: 14400
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Pool using the pool ID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/pool:Pool example wspool-12345678
/// ```
///
/// ### Identity Schema
///
/// #### Required
///
/// * `poolId` (String) WorkSpaces Pool identifier.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
class Pool extends pulumi.CustomResource {
  /// Application settings configuration for the WorkSpaces Pool. See `applicationSettings` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> applicationSettings;
  /// ID of the bundle for the WorkSpaces Pool.
  late final pulumi.Output<String> bundleId;
  /// Capacity configuration for the WorkSpaces Pool. See `capacity` below.
  late final pulumi.Output<PoolCapacity?> capacity;
  /// Capacity status of the WorkSpaces Pool. See `capacityStatus` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> capacityStatuses;
  /// Date and time the WorkSpaces Pool was created.
  late final pulumi.Output<String> createdAt;
  /// Description of the WorkSpaces Pool.
  late final pulumi.Output<String> description;
  /// ID of the directory for the WorkSpaces Pool.
  late final pulumi.Output<String> directoryId;
  /// ARN of the WorkSpaces Pool.
  late final pulumi.Output<String> poolArn;
  /// ID of the WorkSpaces Pool.
  late final pulumi.Output<String> poolId;
  /// Name of the WorkSpaces Pool. This cannot be changed after creation.
  late final pulumi.Output<String> poolName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Running mode of the WorkSpaces Pool. Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> runningMode;
  /// S3 bucket where application settings are stored when `applicationSettings` is enabled.
  late final pulumi.Output<String> s3BucketName;
  /// Current state of the WorkSpaces Pool.
  late final pulumi.Output<String> state;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Timeout settings configuration for the WorkSpaces Pool. See `timeoutSettings` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> timeoutSettings;
  late final pulumi.Output<PoolTimeouts?> timeouts;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_workspaces_pool_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(
    String name, {
    PoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/pool:Pool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationSettings = registerOutput<List<Map<String, dynamic>>>('applicationSettings');
    bundleId = registerOutput<String>('bundleId');
    capacity = registerOutput<PoolCapacity?>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityStatuses = registerOutput<List<Map<String, dynamic>>>('capacityStatuses');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    directoryId = registerOutput<String>('directoryId');
    poolArn = registerOutput<String>('poolArn');
    poolId = registerOutput<String>('poolId');
    poolName = registerOutput<String>('poolName');
    region = registerOutput<String>('region');
    runningMode = registerOutput<String>('runningMode');
    s3BucketName = registerOutput<String>('s3BucketName');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeoutSettings = registerOutput<List<Map<String, dynamic>>>('timeoutSettings');
    timeouts = registerOutput<PoolTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Pool] resource's state with the given [name] and [id].
  static Pool get(
    String name,
    pulumi.Input<String> id, {
    PoolState? state,
  }) {
    return Pool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/pool:Pool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationSettings = registerOutput<List<Map<String, dynamic>>>('applicationSettings');
    bundleId = registerOutput<String>('bundleId');
    capacity = registerOutput<PoolCapacity?>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityStatuses = registerOutput<List<Map<String, dynamic>>>('capacityStatuses');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    directoryId = registerOutput<String>('directoryId');
    poolArn = registerOutput<String>('poolArn');
    poolId = registerOutput<String>('poolId');
    poolName = registerOutput<String>('poolName');
    region = registerOutput<String>('region');
    runningMode = registerOutput<String>('runningMode');
    s3BucketName = registerOutput<String>('s3BucketName');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeoutSettings = registerOutput<List<Map<String, dynamic>>>('timeoutSettings');
    timeouts = registerOutput<PoolTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
