import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_folder_mute_config_args.dart';

/// Mute Findings is a volume management feature in Security Command Center
/// that lets you manually or programmatically hide irrelevant findings,
/// and create filters to automatically silence existing and future
/// findings based on criteria you specify.
///
///
/// To get more information about FolderMuteConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/folders.muteConfigs)
///
/// ## Example Usage
///
/// ### Scc V2 Folder Mute Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     parent: "organizations/123456789",
///     displayName: "folder-name",
/// });
/// const _default = new gcp.securitycenter.V2FolderMuteConfig("default", {
///     muteConfigId: "my-config",
///     folder: folder.folderId,
///     location: "global",
///     description: "My custom Cloud Security Command Center Finding Folder mute Configuration",
///     filter: "severity = \"HIGH\"",
///     type: "STATIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
///     parent="organizations/123456789",
///     display_name="folder-name")
/// default = gcp.securitycenter.V2FolderMuteConfig("default",
///     mute_config_id="my-config",
///     folder=folder.folder_id,
///     location="global",
///     description="My custom Cloud Security Command Center Finding Folder mute Configuration",
///     filter="severity = \"HIGH\"",
///     type="STATIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         Parent = "organizations/123456789",
///         DisplayName = "folder-name",
///     });
///
///     var @default = new Gcp.SecurityCenter.V2FolderMuteConfig("default", new()
///     {
///         MuteConfigId = "my-config",
///         Folder = folder.FolderId,
///         Location = "global",
///         Description = "My custom Cloud Security Command Center Finding Folder mute Configuration",
///         Filter = "severity = \"HIGH\"",
///         Type = "STATIC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			DisplayName: pulumi.String("folder-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewV2FolderMuteConfig(ctx, "default", &securitycenter.V2FolderMuteConfigArgs{
/// 			MuteConfigId: pulumi.String("my-config"),
/// 			Folder:       folder.FolderId,
/// 			Location:     pulumi.String("global"),
/// 			Description:  pulumi.String("My custom Cloud Security Command Center Finding Folder mute Configuration"),
/// 			Filter:       pulumi.String("severity = \"HIGH\""),
/// 			Type:         pulumi.String("STATIC"),
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.securitycenter.V2FolderMuteConfig;
/// import com.pulumi.gcp.securitycenter.V2FolderMuteConfigArgs;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .parent("organizations/123456789")
///             .displayName("folder-name")
///             .build());
///
///         var default_ = new V2FolderMuteConfig("default", V2FolderMuteConfigArgs.builder()
///             .muteConfigId("my-config")
///             .folder(folder.folderId())
///             .location("global")
///             .description("My custom Cloud Security Command Center Finding Folder mute Configuration")
///             .filter("severity = \"HIGH\"")
///             .type("STATIC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       parent: organizations/123456789
///       displayName: folder-name
///   default:
///     type: gcp:securitycenter:V2FolderMuteConfig
///     properties:
///       muteConfigId: my-config
///       folder: ${folder.folderId}
///       location: global
///       description: My custom Cloud Security Command Center Finding Folder mute Configuration
///       filter: severity = "HIGH"
///       type: STATIC
/// ```
///
///
/// ## Import
///
/// FolderMuteConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/muteConfigs/{{mute_config_id}}`
///
/// * `{{folder}}/{{location}}/{{mute_config_id}}`
///
/// When using the `pulumi import` command, FolderMuteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderMuteConfig:V2FolderMuteConfig default folders/{{folder}}/locations/{{location}}/muteConfigs/{{mute_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderMuteConfig:V2FolderMuteConfig default {{folder}}/{{location}}/{{mute_config_id}}
/// ```
class V2FolderMuteConfig extends pulumi.CustomResource {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  late final pulumi.Output<String> createTime;

  /// A description of the mute config.
  late final pulumi.Output<String?> description;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  late final pulumi.Output<String> filter;

  /// The folder whose Cloud Security Command Center the Mute
  /// Config lives in.
  late final pulumi.Output<String> folder;

  /// location Id is provided by folder. If not provided, Use global as default.
  late final pulumi.Output<String?> location;

  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final pulumi.Output<String> mostRecentEditor;

  /// Unique identifier provided by the client within the parent scope.
  late final pulumi.Output<String> muteConfigId;

  /// Name of the mute config. Its format is
  /// organizations/{organization}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or projects/{project}/locations/global/muteConfigs/{configId}
  late final pulumi.Output<String> name;

  /// The type of the mute config.
  late final pulumi.Output<String> type;

  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [V2FolderMuteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2FolderMuteConfig]. {@macro pulumi_securitycenter_v2_folder_mute_config_v2_folder_mute_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2FolderMuteConfig(
    String name, {
    V2FolderMuteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:securitycenter/v2FolderMuteConfig:V2FolderMuteConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.filter = registerOutput<String>('filter');
    this.folder = registerOutput<String>('folder');
    this.location = registerOutput<String?>('location');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
