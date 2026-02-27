import 'package:pulumi/pulumi.dart' as pulumi;
import '../multicast_group_consumer_activation_log_config/multicast_group_consumer_activation_log_config.dart';
import '../multicast_group_consumer_activation_state/multicast_group_consumer_activation_state.dart';
import 'multicast_group_consumer_activation_args.dart';

/// Create a multicast group consumer activation in the specified location of the current project.
///
///
/// To get more information about MulticastGroupConsumerActivation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastGroupConsumerActivations)
/// * How-to Guides
/// * [Create Multicast Group Consumer Activation](https://docs.cloud.google.com/vpc/docs/multicast/enable-consumer-network#activate-consumer)
///
/// ## Example Usage
///
/// ### Network Services Multicast Group Consumer Activation Basic
///
///
///
///
/// ## Import
///
/// MulticastGroupConsumerActivation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastGroupConsumerActivations/{{multicast_group_consumer_activation_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_group_consumer_activation_id}}`
///
/// * `{{location}}/{{multicast_group_consumer_activation_id}}`
///
/// When using the `pulumi import` command, MulticastGroupConsumerActivation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation default projects/{{project}}/locations/{{location}}/multicastGroupConsumerActivations/{{multicast_group_consumer_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation default {{project}}/{{location}}/{{multicast_group_consumer_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation default {{location}}/{{multicast_group_consumer_activation_id}}
/// ```
class MulticastGroupConsumerActivation extends pulumi.CustomResource {
  /// The timestamp when the multicast group consumer activation
  /// was created.
  late final pulumi.Output<String> createTime;

  /// An optional text description of the multicast group consumer activation.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  late final pulumi.Output<MulticastGroupConsumerActivationLogConfig?>
      logConfig;

  /// The resource name of the multicast consumer association that is in the
  /// same zone as this multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  late final pulumi.Output<String> multicastConsumerAssociation;

  /// A unique name for the multicast group consumer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastGroupConsumerActivationId;

  /// The resource name of the multicast group range activation created by the
  /// admin in the same zone as this multicast group consumer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  late final pulumi.Output<String> multicastGroupRangeActivation;

  /// Identifier. The resource name of the multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupConsumerActivations/*`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  late final pulumi.Output<List<MulticastGroupConsumerActivationState>> states;

  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast group consumer activation resources. If a group
  /// consumer activation is deleted and another with the same name is created,
  /// the new group consumer activation is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// The timestamp when the multicast group consumer activation
  /// was most recently updated.
  late final pulumi.Output<String> updateTime;

  MulticastGroupConsumerActivation(
    String name, {
    MulticastGroupConsumerActivationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.logConfig =
        registerOutput<MulticastGroupConsumerActivationLogConfig?>('logConfig');
    this.multicastConsumerAssociation =
        registerOutput<String>('multicastConsumerAssociation');
    this.multicastGroupConsumerActivationId =
        registerOutput<String>('multicastGroupConsumerActivationId');
    this.multicastGroupRangeActivation =
        registerOutput<String>('multicastGroupRangeActivation');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states =
        registerOutput<List<MulticastGroupConsumerActivationState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
