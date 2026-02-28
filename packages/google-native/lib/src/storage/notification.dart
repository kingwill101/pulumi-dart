import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_args.dart';

/// Creates a notification subscription for a given bucket.
/// Auto-naming is currently not supported for this resource.
class Notification extends pulumi.CustomResource {
  late final pulumi.Output<String> bucket;

  /// An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
  late final pulumi.Output<Map<String, String>> customAttributes;

  /// HTTP 1.1 Entity tag for this subscription notification.
  late final pulumi.Output<String> etag;

  /// If present, only send notifications about listed event types. If empty, sent notifications for all event types.
  late final pulumi.Output<List<String>> eventTypes;

  /// The kind of item this is. For notifications, this is always storage#notification.
  late final pulumi.Output<String> kind;

  /// If present, only apply this notification configuration to object names that begin with this prefix.
  late final pulumi.Output<String> objectNamePrefix;

  /// The desired content of the Payload.
  late final pulumi.Output<String> payloadFormat;

  /// The canonical URL of this notification.
  late final pulumi.Output<String> selfLink;

  /// The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  late final pulumi.Output<String> topic;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final pulumi.Output<String?> userProject;

  /// Creates a new [Notification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Notification]. {@macro pulumi_storage_v1_notification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Notification(
    String name, {
    NotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:Notification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.customAttributes =
        registerOutput<Map<String, String>>('customAttributes');
    this.etag = registerOutput<String>('etag');
    this.eventTypes = registerOutput<List<String>>('eventTypes');
    this.kind = registerOutput<String>('kind');
    this.objectNamePrefix = registerOutput<String>('objectNamePrefix');
    this.payloadFormat = registerOutput<String>('payloadFormat');
    this.selfLink = registerOutput<String>('selfLink');
    this.topic = registerOutput<String>('topic');
    this.userProject = registerOutput<String?>('userProject');
  }
}
