import 'package:pulumi/pulumi.dart';
import 'notification_args.dart';

/// Creates a new notification configuration on a specified bucket, establishing a flow of event notifications from GCS to a Cloud Pub/Sub topic.
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/pubsub-notifications)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/notifications).
///
/// In order to enable notifications, a special Google Cloud Storage service account unique to the project
/// must exist and have the IAM permission "projects.topics.publish" for a Cloud Pub/Sub topic in the project.
/// This service account is not created automatically when a project is created.
/// To ensure the service account exists and obtain its email address for use in granting the correct IAM permission, use the
/// [`gcp.storage.getProjectServiceAccount`](https://www.terraform.io/docs/providers/google/d/storage_project_service_account.html)
/// datasource's `email_address` value, and see below for an example of enabling notifications by granting the correct IAM permission.
/// See [the notifications documentation](https://cloud.google.com/storage/docs/gsutil/commands/notification) for more details.
///
/// >**NOTE**: This resource can affect your storage IAM policy. If you are using this in the same config as your storage IAM policy resources, consider
/// making this resource dependent on those IAM resources via `depends_on`. This will safeguard against errors due to IAM race conditions.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Storage notifications can be imported using any of these accepted formats:
///
/// * `{{bucket_name}}/notificationConfigs/{{id}}`
///
/// When using the `pulumi import` command, Storage notifications can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/notification:Notification default {{bucket_name}}/notificationConfigs/{{id}}
/// ```
class Notification extends CustomResource {
  /// The name of the bucket.
  late final Output<String> bucket;

  /// A set of key/value attribute pairs to attach to each Cloud PubSub message published for this notification subscription
  late final Output<Map<String, String>?> customAttributes;

  /// List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: `"OBJECT_FINALIZE"`, `"OBJECT_METADATA_UPDATE"`, `"OBJECT_DELETE"`, `"OBJECT_ARCHIVE"`
  late final Output<List<String>?> eventTypes;

  /// The ID of the created notification.
  late final Output<String> notificationId;

  /// Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix.
  late final Output<String?> objectNamePrefix;

  /// The desired content of the Payload. One of `"JSON_API_V1"` or `"NONE"`.
  late final Output<String> payloadFormat;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The Cloud PubSub topic to which this subscription publishes. Expects either the
  /// topic name, assumed to belong to the default GCP provider project, or the project-level name,
  /// i.e. `projects/my-gcp-project/topics/my-topic` or `my-topic`. If the project is not set in the provider,
  /// you will need to use the project-level name.
  ///
  /// - - -
  late final Output<String> topic;

  Notification(
    String name, {
    NotificationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/notification:Notification',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.customAttributes =
        registerOutput<Map<String, String>?>('customAttributes');
    this.eventTypes = registerOutput<List<String>?>('eventTypes');
    this.notificationId = registerOutput<String>('notificationId');
    this.objectNamePrefix = registerOutput<String?>('objectNamePrefix');
    this.payloadFormat = registerOutput<String>('payloadFormat');
    this.selfLink = registerOutput<String>('selfLink');
    this.topic = registerOutput<String>('topic');
  }
}
