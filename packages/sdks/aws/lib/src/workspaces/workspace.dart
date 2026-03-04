import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_state.dart';
import 'workspace_workspace_properties.dart';

/// Provides a workspace in [AWS Workspaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces.html) Service
///
/// &gt; **NOTE:** AWS WorkSpaces service requires [`workspaces_DefaultRole`](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role) IAM role to operate normally.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const valueWindows10 = aws.workspaces.getBundle({
///     bundleId: "wsb-bh8rsxt14",
/// });
/// const workspaces = aws.kms.getKey({
///     keyId: "alias/aws/workspaces",
/// });
/// const example = new aws.workspaces.Workspace("example", {
///     directoryId: exampleAwsWorkspacesDirectory.id,
///     bundleId: valueWindows10.then(valueWindows10 => valueWindows10.id),
///     userName: "john.doe",
///     rootVolumeEncryptionEnabled: true,
///     userVolumeEncryptionEnabled: true,
///     volumeEncryptionKey: workspaces.then(workspaces => workspaces.arn),
///     workspaceProperties: {
///         computeTypeName: "VALUE",
///         userVolumeSizeGib: 10,
///         rootVolumeSizeGib: 80,
///         runningMode: "AUTO_STOP",
///         runningModeAutoStopTimeoutInMinutes: 60,
///     },
///     tags: {
///         Department: "IT",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// value_windows10 = aws.workspaces.get_bundle(bundle_id="wsb-bh8rsxt14")
/// workspaces = aws.kms.get_key(key_id="alias/aws/workspaces")
/// example = aws.workspaces.Workspace("example",
///     directory_id=example_aws_workspaces_directory["id"],
///     bundle_id=value_windows10.id,
///     user_name="john.doe",
///     root_volume_encryption_enabled=True,
///     user_volume_encryption_enabled=True,
///     volume_encryption_key=workspaces.arn,
///     workspace_properties={
///         "compute_type_name": "VALUE",
///         "user_volume_size_gib": 10,
///         "root_volume_size_gib": 80,
///         "running_mode": "AUTO_STOP",
///         "running_mode_auto_stop_timeout_in_minutes": 60,
///     },
///     tags={
///         "Department": "IT",
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
///     var valueWindows10 = Aws.Workspaces.GetBundle.Invoke(new()
///     {
///         BundleId = "wsb-bh8rsxt14",
///     });
///
///     var workspaces = Aws.Kms.GetKey.Invoke(new()
///     {
///         KeyId = "alias/aws/workspaces",
///     });
///
///     var example = new Aws.Workspaces.Workspace("example", new()
///     {
///         DirectoryId = exampleAwsWorkspacesDirectory.Id,
///         BundleId = valueWindows10.Apply(getBundleResult => getBundleResult.Id),
///         UserName = "john.doe",
///         RootVolumeEncryptionEnabled = true,
///         UserVolumeEncryptionEnabled = true,
///         VolumeEncryptionKey = workspaces.Apply(getKeyResult => getKeyResult.Arn),
///         WorkspaceProperties = new Aws.Workspaces.Inputs.WorkspaceWorkspacePropertiesArgs
///         {
///             ComputeTypeName = "VALUE",
///             UserVolumeSizeGib = 10,
///             RootVolumeSizeGib = 80,
///             RunningMode = "AUTO_STOP",
///             RunningModeAutoStopTimeoutInMinutes = 60,
///         },
///         Tags =
///         {
///             { "Department", "IT" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		valueWindows10, err := workspaces.GetBundle(ctx, &workspaces.GetBundleArgs{
/// 			BundleId: pulumi.StringRef("wsb-bh8rsxt14"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspaces, err := kms.LookupKey(ctx, &kms.LookupKeyArgs{
/// 			KeyId: "alias/aws/workspaces",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspaces.NewWorkspace(ctx, "example", &workspaces.WorkspaceArgs{
/// 			DirectoryId:                 pulumi.Any(exampleAwsWorkspacesDirectory.Id),
/// 			BundleId:                    pulumi.String(valueWindows10.Id),
/// 			UserName:                    pulumi.String("john.doe"),
/// 			RootVolumeEncryptionEnabled: pulumi.Bool(true),
/// 			UserVolumeEncryptionEnabled: pulumi.Bool(true),
/// 			VolumeEncryptionKey:         pulumi.String(workspaces.Arn),
/// 			WorkspaceProperties: &workspaces.WorkspaceWorkspacePropertiesArgs{
/// 				ComputeTypeName:                     pulumi.String("VALUE"),
/// 				UserVolumeSizeGib:                   pulumi.Int(10),
/// 				RootVolumeSizeGib:                   pulumi.Int(80),
/// 				RunningMode:                         pulumi.String("AUTO_STOP"),
/// 				RunningModeAutoStopTimeoutInMinutes: pulumi.Int(60),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Department": pulumi.String("IT"),
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
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetBundleArgs;
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetKeyArgs;
/// import com.pulumi.aws.workspaces.Workspace;
/// import com.pulumi.aws.workspaces.WorkspaceArgs;
/// import com.pulumi.aws.workspaces.inputs.WorkspaceWorkspacePropertiesArgs;
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
///         final var valueWindows10 = WorkspacesFunctions.getBundle(GetBundleArgs.builder()
///             .bundleId("wsb-bh8rsxt14")
///             .build());
///
///         final var workspaces = KmsFunctions.getKey(GetKeyArgs.builder()
///             .keyId("alias/aws/workspaces")
///             .build());
///
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .directoryId(exampleAwsWorkspacesDirectory.id())
///             .bundleId(valueWindows10.id())
///             .userName("john.doe")
///             .rootVolumeEncryptionEnabled(true)
///             .userVolumeEncryptionEnabled(true)
///             .volumeEncryptionKey(workspaces.arn())
///             .workspaceProperties(WorkspaceWorkspacePropertiesArgs.builder()
///                 .computeTypeName("VALUE")
///                 .userVolumeSizeGib(10)
///                 .rootVolumeSizeGib(80)
///                 .runningMode("AUTO_STOP")
///                 .runningModeAutoStopTimeoutInMinutes(60)
///                 .build())
///             .tags(Map.of("Department", "IT"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspaces:Workspace
///     properties:
///       directoryId: ${exampleAwsWorkspacesDirectory.id}
///       bundleId: ${valueWindows10.id}
///       userName: john.doe
///       rootVolumeEncryptionEnabled: true
///       userVolumeEncryptionEnabled: true
///       volumeEncryptionKey: ${workspaces.arn}
///       workspaceProperties:
///         computeTypeName: VALUE
///         userVolumeSizeGib: 10
///         rootVolumeSizeGib: 80
///         runningMode: AUTO_STOP
///         runningModeAutoStopTimeoutInMinutes: 60
///       tags:
///         Department: IT
/// variables:
///   valueWindows10:
///     fn::invoke:
///       function: aws:workspaces:getBundle
///       arguments:
///         bundleId: wsb-bh8rsxt14
///   workspaces:
///     fn::invoke:
///       function: aws:kms:getKey
///       arguments:
///         keyId: alias/aws/workspaces
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Workspaces using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/workspace:Workspace example ws-9z9zmbkhv
/// ```
class Workspace extends pulumi.CustomResource {
  /// The ID of the bundle for the WorkSpace.
  late final pulumi.Output<String> bundleId;

  /// The name of the WorkSpace, as seen by the operating system.
  late final pulumi.Output<String> computerName;

  /// The ID of the directory for the WorkSpace.
  late final pulumi.Output<String> directoryId;

  /// The IP address of the WorkSpace.
  late final pulumi.Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Indicates whether the data stored on the root volume is encrypted.
  late final pulumi.Output<bool?> rootVolumeEncryptionEnabled;

  /// The operational state of the WorkSpace.
  late final pulumi.Output<String> state;

  /// The tags for the WorkSpace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  late final pulumi.Output<String> userName;

  /// Indicates whether the data stored on the user volume is encrypted.
  late final pulumi.Output<bool?> userVolumeEncryptionEnabled;

  /// The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  late final pulumi.Output<String?> volumeEncryptionKey;

  /// The WorkSpace properties.
  late final pulumi.Output<WorkspaceWorkspaceProperties> workspaceProperties;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_workspaces_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspaces/workspace:Workspace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bundleId = registerOutput<String>('bundleId');
    computerName = registerOutput<String>('computerName');
    directoryId = registerOutput<String>('directoryId');
    ipAddress = registerOutput<String>('ipAddress');
    region = registerOutput<String>('region');
    rootVolumeEncryptionEnabled = registerOutput<bool?>(
      'rootVolumeEncryptionEnabled',
    );
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userName = registerOutput<String>('userName');
    userVolumeEncryptionEnabled = registerOutput<bool?>(
      'userVolumeEncryptionEnabled',
    );
    volumeEncryptionKey = registerOutput<String?>('volumeEncryptionKey');
    workspaceProperties = registerOutput<WorkspaceWorkspaceProperties>(
      'workspaceProperties',
    );
  }

  /// Gets an existing [Workspace] resource's state with the given [name] and [id].
  static Workspace get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceState? state,
  }) {
    return Workspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Workspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspaces/workspace:Workspace',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bundleId = registerOutput<String>('bundleId');
    computerName = registerOutput<String>('computerName');
    directoryId = registerOutput<String>('directoryId');
    ipAddress = registerOutput<String>('ipAddress');
    region = registerOutput<String>('region');
    rootVolumeEncryptionEnabled = registerOutput<bool?>(
      'rootVolumeEncryptionEnabled',
    );
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userName = registerOutput<String>('userName');
    userVolumeEncryptionEnabled = registerOutput<bool?>(
      'userVolumeEncryptionEnabled',
    );
    volumeEncryptionKey = registerOutput<String?>('volumeEncryptionKey');
    workspaceProperties = registerOutput<WorkspaceWorkspaceProperties>(
      'workspaceProperties',
    );
  }
}
