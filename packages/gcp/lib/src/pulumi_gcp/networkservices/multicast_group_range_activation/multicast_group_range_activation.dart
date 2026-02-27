import 'package:pulumi/pulumi.dart' as pulumi;
import '../multicast_group_range_activation_log_config/multicast_group_range_activation_log_config.dart';
import '../multicast_group_range_activation_state/multicast_group_range_activation_state.dart';
import 'multicast_group_range_activation_args.dart';

/// Create a multicast group range activation in the specified location of the current project.
///
///
/// To get more information about MulticastGroupRangeActivation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastGroupRangeActivations)
/// * How-to Guides
/// * [Create Multicast Group Range Activation](https://docs.cloud.google.com/vpc/docs/multicast/create-group-ranges#activate_the_group_range)
///
/// ## Example Usage
///
/// ### Network Services Multicast Group Range Activation Basic
///
///
///
///
/// ## Import
///
/// MulticastGroupRangeActivation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastGroupRangeActivations/{{multicast_group_range_activation_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_group_range_activation_id}}`
///
/// * `{{location}}/{{multicast_group_range_activation_id}}`
///
/// When using the `pulumi import` command, MulticastGroupRangeActivation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation default projects/{{project}}/locations/{{location}}/multicastGroupRangeActivations/{{multicast_group_range_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation default {{project}}/{{location}}/{{multicast_group_range_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation default {{location}}/{{multicast_group_range_activation_id}}
/// ```
class MulticastGroupRangeActivation extends pulumi.CustomResource {
  /// [Output only] The timestamp when the multicast group range activation was
  /// created.
  late final pulumi.Output<String> createTime;

  /// An optional text description of the multicast group range activation.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// [Output only] The multicast group IP address range.
  late final pulumi.Output<String> ipCidrRange;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  late final pulumi.Output<MulticastGroupRangeActivationLogConfig?> logConfig;

  /// The resource name of a multicast domain activation that is in the
  /// same zone as this multicast group.
  /// Use the following format:
  /// `projects/*/locations/*/multicastDomainActivations/*`
  late final pulumi.Output<String> multicastDomainActivation;

  /// The resource names of associated multicast group consumer activations.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupConsumerActivations/*`.
  late final pulumi.Output<List<String>> multicastGroupConsumerActivations;

  /// The resource name of the global multicast group range for the
  /// group. Use the following format:
  /// `projects/*/locations/global/multicastGroupRanges/*`
  late final pulumi.Output<String> multicastGroupRange;

  /// A unique name for the multicast group range activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastGroupRangeActivationId;

  /// Identifier. The resource name of the multicast group range activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupRangeActivations/*`.
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
  late final pulumi.Output<List<MulticastGroupRangeActivationState>> states;

  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast group resources. If a group is deleted and
  /// another with the same name is created, the new group is assigned a
  /// different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// [Output only] The timestamp when the multicast group range activation was
  /// most recently updated.
  late final pulumi.Output<String> updateTime;

  MulticastGroupRangeActivation(
    String name, {
    MulticastGroupRangeActivationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.logConfig =
        registerOutput<MulticastGroupRangeActivationLogConfig?>('logConfig');
    this.multicastDomainActivation =
        registerOutput<String>('multicastDomainActivation');
    this.multicastGroupConsumerActivations =
        registerOutput<List<String>>('multicastGroupConsumerActivations');
    this.multicastGroupRange = registerOutput<String>('multicastGroupRange');
    this.multicastGroupRangeActivationId =
        registerOutput<String>('multicastGroupRangeActivationId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states =
        registerOutput<List<MulticastGroupRangeActivationState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
