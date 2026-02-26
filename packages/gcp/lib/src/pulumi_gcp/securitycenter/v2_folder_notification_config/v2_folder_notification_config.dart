import 'package:pulumi/pulumi.dart';
import '../v2_folder_notification_config_streaming_config/v2_folder_notification_config_streaming_config.dart';
import 'v2_folder_notification_config_args.dart';

/// This is a continuous export that exports findings to a Pub/Sub topic.
///
///
/// To get more information about FolderNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/folders.locations.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc V2 Folder Notification Config Basic
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
/// const sccV2FolderNotificationConfig = new gcp.pubsub.Topic("scc_v2_folder_notification_config", {name: "my-topic"});
/// const customNotificationConfig = new gcp.securitycenter.V2FolderNotificationConfig("custom_notification_config", {
/// configId: "my-config",
/// folder: folder.folderId,
/// location: "global",
/// description: "My custom Cloud Security Command Center Finding Notification Configuration",
/// pubsubTopic: sccV2FolderNotificationConfig.id,
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
/// scc_v2_folder_notification_config = gcp.pubsub.Topic("scc_v2_folder_notification_config", name="my-topic")
/// custom_notification_config = gcp.securitycenter.V2FolderNotificationConfig("custom_notification_config",
/// config_id="my-config",
/// folder=folder.folder_id,
/// location="global",
/// description="My custom Cloud Security Command Center Finding Notification Configuration",
/// pubsub_topic=scc_v2_folder_notification_config.id,
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
/// var sccV2FolderNotificationConfig = new Gcp.PubSub.Topic("scc_v2_folder_notification_config", new()
/// {
/// Name = "my-topic",
/// });
///
/// var customNotificationConfig = new Gcp.SecurityCenter.V2FolderNotificationConfig("custom_notification_config", new()
/// {
/// ConfigId = "my-config",
/// Folder = folder.FolderId,
/// Location = "global",
/// Description = "My custom Cloud Security Command Center Finding Notification Configuration",
/// PubsubTopic = sccV2FolderNotificationConfig.Id,
/// StreamingConfig = new Gcp.SecurityCenter.Inputs.V2FolderNotificationConfigStreamingConfigArgs
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
/// sccV2FolderNotificationConfig, err := pubsub.NewTopic(ctx, "scc_v2_folder_notification_config", &pubsub.TopicArgs{
/// Name: pulumi.String("my-topic"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = securitycenter.NewV2FolderNotificationConfig(ctx, "custom_notification_config", &securitycenter.V2FolderNotificationConfigArgs{
/// ConfigId:    pulumi.String("my-config"),
/// Folder:      folder.FolderId,
/// Location:    pulumi.String("global"),
/// Description: pulumi.String("My custom Cloud Security Command Center Finding Notification Configuration"),
/// PubsubTopic: sccV2FolderNotificationConfig.ID(),
/// StreamingConfig: &securitycenter.V2FolderNotificationConfigStreamingConfigArgs{
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
/// import com.pulumi.gcp.securitycenter.V2FolderNotificationConfig;
/// import com.pulumi.gcp.securitycenter.V2FolderNotificationConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.V2FolderNotificationConfigStreamingConfigArgs;
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
/// var sccV2FolderNotificationConfig = new Topic("sccV2FolderNotificationConfig", TopicArgs.builder()
/// .name("my-topic")
/// .build());
///
/// var customNotificationConfig = new V2FolderNotificationConfig("customNotificationConfig", V2FolderNotificationConfigArgs.builder()
/// .configId("my-config")
/// .folder(folder.folderId())
/// .location("global")
/// .description("My custom Cloud Security Command Center Finding Notification Configuration")
/// .pubsubTopic(sccV2FolderNotificationConfig.id())
/// .streamingConfig(V2FolderNotificationConfigStreamingConfigArgs.builder()
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
/// sccV2FolderNotificationConfig:
/// type: gcp:pubsub:Topic
/// name: scc_v2_folder_notification_config
/// properties:
/// name: my-topic
/// customNotificationConfig:
/// type: gcp:securitycenter:V2FolderNotificationConfig
/// name: custom_notification_config
/// properties:
/// configId: my-config
/// folder: ${folder.folderId}
/// location: global
/// description: My custom Cloud Security Command Center Finding Notification Configuration
/// pubsubTopic: ${sccV2FolderNotificationConfig.id}
/// streamingConfig:
/// filter: category = "OPEN_FIREWALL" AND state = "ACTIVE"
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FolderNotificationConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/notificationConfigs/{{config_id}}`
///
/// * `{{folder}}/{{location}}/{{config_id}}`
///
/// When using the `pulumi import` command, FolderNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderNotificationConfig:V2FolderNotificationConfig default folders/{{folder}}/locations/{{location}}/notificationConfigs/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderNotificationConfig:V2FolderNotificationConfig default {{folder}}/{{location}}/{{config_id}}
/// ```
class V2FolderNotificationConfig extends CustomResource {
  /// This must be unique within the organization.
  late final Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final Output<String?> description;

  /// Numerical ID of the parent folder.
  late final Output<String> folder;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  late final Output<String?> location;

  /// The resource name of this notification config, in the format
  /// `folders/{{folder}}/locations/{{location}}/notificationConfigs/{{config_id}}`.
  late final Output<String> name;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/topics/[topic]".
  late final Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final Output<V2FolderNotificationConfigStreamingConfig> streamingConfig;

  V2FolderNotificationConfig(
    String name, {
    V2FolderNotificationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2FolderNotificationConfig:V2FolderNotificationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.folder = Output.createUnknown<String>();
    this.location = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.pubsubTopic = Output.createUnknown<String>();
    this.serviceAccount = Output.createUnknown<String>();
    this.streamingConfig =
        Output.createUnknown<V2FolderNotificationConfigStreamingConfig>();
  }
}
