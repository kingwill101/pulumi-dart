import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_organization_notification_config_args.dart';
import 'v2_organization_notification_config_streaming_config.dart';

/// This is a continuous export that exports findings to a Pub/Sub topic.
///
///
/// To get more information about OrganizationNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/organizations.locations.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc V2 Organization Notification Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sccV2OrganizationNotificationConfig = new gcp.pubsub.Topic("scc_v2_organization_notification_config", {name: "my-topic"});
/// const customOrganizationNotificationConfig = new gcp.securitycenter.V2OrganizationNotificationConfig("custom_organization_notification_config", {
///     configId: "my-config",
///     organization: "123456789",
///     location: "global",
///     description: "My custom Cloud Security Command Center Finding Organization Notification Configuration",
///     pubsubTopic: sccV2OrganizationNotificationConfig.id,
///     streamingConfig: {
///         filter: "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scc_v2_organization_notification_config = gcp.pubsub.Topic("scc_v2_organization_notification_config", name="my-topic")
/// custom_organization_notification_config = gcp.securitycenter.V2OrganizationNotificationConfig("custom_organization_notification_config",
///     config_id="my-config",
///     organization="123456789",
///     location="global",
///     description="My custom Cloud Security Command Center Finding Organization Notification Configuration",
///     pubsub_topic=scc_v2_organization_notification_config.id,
///     streaming_config={
///         "filter": "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sccV2OrganizationNotificationConfig = new Gcp.PubSub.Topic("scc_v2_organization_notification_config", new()
///     {
///         Name = "my-topic",
///     });
///
///     var customOrganizationNotificationConfig = new Gcp.SecurityCenter.V2OrganizationNotificationConfig("custom_organization_notification_config", new()
///     {
///         ConfigId = "my-config",
///         Organization = "123456789",
///         Location = "global",
///         Description = "My custom Cloud Security Command Center Finding Organization Notification Configuration",
///         PubsubTopic = sccV2OrganizationNotificationConfig.Id,
///         StreamingConfig = new Gcp.SecurityCenter.Inputs.V2OrganizationNotificationConfigStreamingConfigArgs
///         {
///             Filter = "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sccV2OrganizationNotificationConfig, err := pubsub.NewTopic(ctx, "scc_v2_organization_notification_config", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewV2OrganizationNotificationConfig(ctx, "custom_organization_notification_config", &securitycenter.V2OrganizationNotificationConfigArgs{
/// 			ConfigId:     pulumi.String("my-config"),
/// 			Organization: pulumi.String("123456789"),
/// 			Location:     pulumi.String("global"),
/// 			Description:  pulumi.String("My custom Cloud Security Command Center Finding Organization Notification Configuration"),
/// 			PubsubTopic:  sccV2OrganizationNotificationConfig.ID(),
/// 			StreamingConfig: &securitycenter.V2OrganizationNotificationConfigStreamingConfigArgs{
/// 				Filter: pulumi.String("category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\""),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.securitycenter.V2OrganizationNotificationConfig;
/// import com.pulumi.gcp.securitycenter.V2OrganizationNotificationConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.V2OrganizationNotificationConfigStreamingConfigArgs;
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
///         var sccV2OrganizationNotificationConfig = new Topic("sccV2OrganizationNotificationConfig", TopicArgs.builder()
///             .name("my-topic")
///             .build());
///
///         var customOrganizationNotificationConfig = new V2OrganizationNotificationConfig("customOrganizationNotificationConfig", V2OrganizationNotificationConfigArgs.builder()
///             .configId("my-config")
///             .organization("123456789")
///             .location("global")
///             .description("My custom Cloud Security Command Center Finding Organization Notification Configuration")
///             .pubsubTopic(sccV2OrganizationNotificationConfig.id())
///             .streamingConfig(V2OrganizationNotificationConfigStreamingConfigArgs.builder()
///                 .filter("category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sccV2OrganizationNotificationConfig:
///     type: gcp:pubsub:Topic
///     name: scc_v2_organization_notification_config
///     properties:
///       name: my-topic
///   customOrganizationNotificationConfig:
///     type: gcp:securitycenter:V2OrganizationNotificationConfig
///     name: custom_organization_notification_config
///     properties:
///       configId: my-config
///       organization: '123456789'
///       location: global
///       description: My custom Cloud Security Command Center Finding Organization Notification Configuration
///       pubsubTopic: ${sccV2OrganizationNotificationConfig.id}
///       streamingConfig:
///         filter: category = "OPEN_FIREWALL" AND state = "ACTIVE"
/// ```
///
///
/// ## Import
///
/// OrganizationNotificationConfig can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, OrganizationNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationNotificationConfig:V2OrganizationNotificationConfig default {{name}}
/// ```
class V2OrganizationNotificationConfig extends pulumi.CustomResource {
  /// This must be unique within the organization.
  late final pulumi.Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;

  /// location Id is provided by organization. If not provided, Use global as default.
  late final pulumi.Output<String?> location;

  /// The resource name of this notification config, in the format
  /// `organizations/{{organization}}/notificationConfigs/{{config_id}}`.
  late final pulumi.Output<String> name;

  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  late final pulumi.Output<String> organization;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final pulumi.Output<V2OrganizationNotificationConfigStreamingConfig>
  streamingConfig;

  /// Creates a new [V2OrganizationNotificationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2OrganizationNotificationConfig]. {@macro pulumi_securitycenter_v2_organization_notification_config_v2_organization_notification_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2OrganizationNotificationConfig(
    String name, {
    V2OrganizationNotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:securitycenter/v2OrganizationNotificationConfig:V2OrganizationNotificationConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig =
        registerOutput<V2OrganizationNotificationConfigStreamingConfig>(
          'streamingConfig',
        );
  }
}
