import 'package:pulumi/pulumi.dart';
import '../folder_notification_config_streaming_config/folder_notification_config_streaming_config.dart';
import 'folder_notification_config_args.dart';

/// A Cloud Security Command Center (Cloud SCC) notification configs. A
/// notification config is a Cloud SCC resource that contains the
/// configuration to send notifications for create/update events of
/// findings, assets and etc.
/// > **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about FolderNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/folders.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc Folder Notification Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
/// parent: "organizations/123456789",
/// displayName: "folder-name",
/// });
/// const sccFolderNotificationConfig = new gcp.pubsub.Topic("scc_folder_notification_config", {name: "my-topic"});
/// const customNotificationConfig = new gcp.securitycenter.FolderNotificationConfig("custom_notification_config", {
/// configId: "my-config",
/// folder: folder.folderId,
/// location: "global",
/// description: "My custom Cloud Security Command Center Finding Notification Configuration",
/// pubsubTopic: sccFolderNotificationConfig.id,
/// streamingConfig: {
/// filter: "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
/// parent="organizations/123456789",
/// display_name="folder-name")
/// scc_folder_notification_config = gcp.pubsub.Topic("scc_folder_notification_config", name="my-topic")
/// custom_notification_config = gcp.securitycenter.FolderNotificationConfig("custom_notification_config",
/// config_id="my-config",
/// folder=folder.folder_id,
/// location="global",
/// description="My custom Cloud Security Command Center Finding Notification Configuration",
/// pubsub_topic=scc_folder_notification_config.id,
/// streaming_config={
/// "filter": "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var folder = new Gcp.Organizations.Folder("folder", new()
/// {
/// Parent = "organizations/123456789",
/// DisplayName = "folder-name",
/// });
///
/// var sccFolderNotificationConfig = new Gcp.PubSub.Topic("scc_folder_notification_config", new()
/// {
/// Name = "my-topic",
/// });
///
/// var customNotificationConfig = new Gcp.SecurityCenter.FolderNotificationConfig("custom_notification_config", new()
/// {
/// ConfigId = "my-config",
/// Folder = folder.FolderId,
/// Location = "global",
/// Description = "My custom Cloud Security Command Center Finding Notification Configuration",
/// PubsubTopic = sccFolderNotificationConfig.Id,
/// StreamingConfig = new Gcp.SecurityCenter.Inputs.FolderNotificationConfigStreamingConfigArgs
/// {
/// Filter = "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// Parent:      pulumi.String("organizations/123456789"),
/// DisplayName: pulumi.String("folder-name"),
/// })
/// if err != nil {
/// return err
/// }
/// sccFolderNotificationConfig, err := pubsub.NewTopic(ctx, "scc_folder_notification_config", &pubsub.TopicArgs{
/// Name: pulumi.String("my-topic"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = securitycenter.NewFolderNotificationConfig(ctx, "custom_notification_config", &securitycenter.FolderNotificationConfigArgs{
/// ConfigId:    pulumi.String("my-config"),
/// Folder:      folder.FolderId,
/// Location:    "global",
/// Description: pulumi.String("My custom Cloud Security Command Center Finding Notification Configuration"),
/// PubsubTopic: sccFolderNotificationConfig.ID(),
/// StreamingConfig: &securitycenter.FolderNotificationConfigStreamingConfigArgs{
/// Filter: pulumi.String("category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\""),
/// },
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.securitycenter.FolderNotificationConfig;
/// import com.pulumi.gcp.securitycenter.FolderNotificationConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.FolderNotificationConfigStreamingConfigArgs;
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
/// var folder = new Folder("folder", FolderArgs.builder()
/// .parent("organizations/123456789")
/// .displayName("folder-name")
/// .build());
///
/// var sccFolderNotificationConfig = new Topic("sccFolderNotificationConfig", TopicArgs.builder()
/// .name("my-topic")
/// .build());
///
/// var customNotificationConfig = new FolderNotificationConfig("customNotificationConfig", FolderNotificationConfigArgs.builder()
/// .configId("my-config")
/// .folder(folder.folderId())
/// .location("global")
/// .description("My custom Cloud Security Command Center Finding Notification Configuration")
/// .pubsubTopic(sccFolderNotificationConfig.id())
/// .streamingConfig(FolderNotificationConfigStreamingConfigArgs.builder()
/// .filter("category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:organizations:Folder
/// properties:
/// parent: organizations/123456789
/// displayName: folder-name
/// sccFolderNotificationConfig:
/// type: gcp:pubsub:Topic
/// name: scc_folder_notification_config
/// properties:
/// name: my-topic
/// customNotificationConfig:
/// type: gcp:securitycenter:FolderNotificationConfig
/// name: custom_notification_config
/// properties:
/// configId: my-config
/// folder: ${folder.folderId}
/// location: global
/// description: My custom Cloud Security Command Center Finding Notification Configuration
/// pubsubTopic: ${sccFolderNotificationConfig.id}
/// streamingConfig:
/// filter: category = "OPEN_FIREWALL" AND state = "ACTIVE"
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FolderNotificationConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/notificationConfigs/{{config_id}}`
///
/// * `{{folder}}/{{config_id}}`
///
/// When using the `pulumi import` command, FolderNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderNotificationConfig:FolderNotificationConfig default folders/{{folder}}/notificationConfigs/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderNotificationConfig:FolderNotificationConfig default {{folder}}/{{config_id}}
/// ```
class FolderNotificationConfig extends CustomResource {
  /// This must be unique within the organization.
  late final Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final Output<String?> description;

  /// Numerical ID of the parent folder.
  late final Output<String> folder;

  /// The resource name of this notification config, in the format
  /// `folders/{{folder}}/notificationConfigs/{{config_id}}`.
  late final Output<String> name;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/topics/[topic]".
  late final Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final Output<FolderNotificationConfigStreamingConfig> streamingConfig;

  FolderNotificationConfig(
    String name, {
    FolderNotificationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/folderNotificationConfig:FolderNotificationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.folder = registerOutput<String>('folder');
    this.name = registerOutput<String>('name');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig =
        registerOutput<FolderNotificationConfigStreamingConfig>(
            'streamingConfig');
  }
}
