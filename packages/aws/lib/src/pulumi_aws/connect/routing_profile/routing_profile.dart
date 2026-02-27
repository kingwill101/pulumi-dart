import 'package:pulumi/pulumi.dart';
import '../routing_profile_media_concurrency/routing_profile_media_concurrency.dart';
import '../routing_profile_queue_config/routing_profile_queue_config.dart';
import 'routing_profile_args.dart';

/// Provides an Amazon Connect Routing Profile resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Routing Profiles using the `instance_id` and `routing_profile_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/routingProfile:RoutingProfile example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class RoutingProfile extends CustomResource {
  /// Amazon Resource Name (ARN) of the Routing Profile.
  late final Output<String> arn;

  /// Specifies the default outbound queue for the Routing Profile.
  late final Output<String> defaultOutboundQueueId;

  /// Specifies the description of the Routing Profile.
  late final Output<String> description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// One or more `media_concurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `media_concurrencies` block is documented below.
  late final Output<List<RoutingProfileMediaConcurrency>> mediaConcurrencies;

  /// Specifies the name of the Routing Profile.
  late final Output<String> name;

  /// One or more `queue_configs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queue_configs` block is documented below.
  late final Output<List<RoutingProfileQueueConfig>?> queueConfigs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier for the Routing Profile.
  late final Output<String> routingProfileId;

  /// Tags to apply to the Routing Profile. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  RoutingProfile(
    String name, {
    RoutingProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/routingProfile:RoutingProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultOutboundQueueId =
        registerOutput<String>('defaultOutboundQueueId');
    this.description = registerOutput<String>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.mediaConcurrencies =
        registerOutput<List<RoutingProfileMediaConcurrency>>(
            'mediaConcurrencies');
    this.name = registerOutput<String>('name');
    this.queueConfigs =
        registerOutput<List<RoutingProfileQueueConfig>?>('queueConfigs');
    this.region = registerOutput<String>('region');
    this.routingProfileId = registerOutput<String>('routingProfileId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
