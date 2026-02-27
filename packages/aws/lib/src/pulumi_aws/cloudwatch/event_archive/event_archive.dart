import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_archive_args.dart';

/// Provides an EventBridge event archive resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
///
///
/// ### Optional Arguments
///
///
///
///
/// ### CMK Encryption
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an EventBridge archive using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventArchive:EventArchive imported_event_archive order-archive
/// ```
class EventArchive extends pulumi.CustomResource {
  /// ARN of the archive.
  late final pulumi.Output<String> arn;

  /// Description for the archive.
  late final pulumi.Output<String?> description;

  /// Event pattern to use to filter events sent to the archive. By default, it attempts to archive every event received in the `event_source_arn`.
  late final pulumi.Output<String?> eventPattern;

  /// ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
  late final pulumi.Output<String> eventSourceArn;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  late final pulumi.Output<String?> kmsKeyIdentifier;

  /// Name of the archive. The archive name cannot exceed 48 characters.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
  late final pulumi.Output<int?> retentionDays;

  EventArchive(
    String name, {
    EventArchiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventArchive:EventArchive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.eventPattern = registerOutput<String?>('eventPattern');
    this.eventSourceArn = registerOutput<String>('eventSourceArn');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.retentionDays = registerOutput<int?>('retentionDays');
  }
}
