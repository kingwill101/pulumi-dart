import 'package:pulumi/pulumi.dart';
import '../queue_outbound_caller_config/queue_outbound_caller_config.dart';
import 'queue_args.dart';

/// Provides an Amazon Connect Queue resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With Quick Connect IDs
///
///
///
/// ### With Outbound Caller Config
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Queues using the `instance_id` and `queue_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/queue:Queue example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class Queue extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Queue.
  late final Output<String> arn;

  /// Specifies the description of the Queue.
  late final Output<String?> description;

  /// Specifies the identifier of the Hours of Operation.
  late final Output<String> hoursOfOperationId;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// Specifies the maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  late final Output<int?> maxContacts;

  /// Specifies the name of the Queue.
  late final Output<String> name;

  /// A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  late final Output<QueueOutboundCallerConfig?> outboundCallerConfig;

  /// The identifier for the Queue.
  late final Output<String> queueId;

  /// Specifies a list of quick connects ids that determine the quick connects available to agents who are working the queue.
  late final Output<List<String>?> quickConnectIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the description of the Queue. Valid values are `ENABLED`, `DISABLED`.
  late final Output<String> status;

  /// Tags to apply to the Queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Queue(
    String name, {
    QueueArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/queue:Queue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.hoursOfOperationId = registerOutput<String>('hoursOfOperationId');
    this.instanceId = registerOutput<String>('instanceId');
    this.maxContacts = registerOutput<int?>('maxContacts');
    this.name = registerOutput<String>('name');
    this.outboundCallerConfig =
        registerOutput<QueueOutboundCallerConfig?>('outboundCallerConfig');
    this.queueId = registerOutput<String>('queueId');
    this.quickConnectIds = registerOutput<List<String>?>('quickConnectIds');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
