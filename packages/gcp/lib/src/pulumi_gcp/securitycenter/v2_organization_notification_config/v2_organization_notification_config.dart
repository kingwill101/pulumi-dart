import 'package:pulumi/pulumi.dart';
import '../v2_organization_notification_config_streaming_config/v2_organization_notification_config_streaming_config.dart';
import 'v2_organization_notification_config_args.dart';

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
class V2OrganizationNotificationConfig extends CustomResource {
  /// This must be unique within the organization.
  late final Output<String> configId;

  /// The description of the notification config (max of 1024 characters).
  late final Output<String?> description;

  /// location Id is provided by organization. If not provided, Use global as default.
  late final Output<String?> location;

  /// The resource name of this notification config, in the format
  /// `organizations/{{organization}}/notificationConfigs/{{config_id}}`.
  late final Output<String> name;

  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  late final Output<String> organization;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final Output<String> pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final Output<String> serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final Output<V2OrganizationNotificationConfigStreamingConfig>
      streamingConfig;

  V2OrganizationNotificationConfig(
    String name, {
    V2OrganizationNotificationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationNotificationConfig:V2OrganizationNotificationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
            'streamingConfig');
  }
}
