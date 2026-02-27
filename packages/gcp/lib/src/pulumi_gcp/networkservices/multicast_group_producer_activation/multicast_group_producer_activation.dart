import 'package:pulumi/pulumi.dart';
import '../multicast_group_producer_activation_state/multicast_group_producer_activation_state.dart';
import 'multicast_group_producer_activation_args.dart';

/// Create a multicast group producer activation in the specified location of the current project.
///
///
/// To get more information about MulticastGroupProducerActivation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastGroupProducerActivations)
/// * How-to Guides
/// * [Create Multicast Group Producer Activation](https://docs.cloud.google.com/vpc/docs/multicast/enable-producer-network#activate-producer)
///
/// ## Example Usage
///
/// ### Network Services Multicast Group Producer Activation Basic
///
///
///
///
/// ## Import
///
/// MulticastGroupProducerActivation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastGroupProducerActivations/{{multicast_group_producer_activation_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_group_producer_activation_id}}`
///
/// * `{{location}}/{{multicast_group_producer_activation_id}}`
///
/// When using the `pulumi import` command, MulticastGroupProducerActivation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupProducerActivation:MulticastGroupProducerActivation default projects/{{project}}/locations/{{location}}/multicastGroupProducerActivations/{{multicast_group_producer_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupProducerActivation:MulticastGroupProducerActivation default {{project}}/{{location}}/{{multicast_group_producer_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupProducerActivation:MulticastGroupProducerActivation default {{location}}/{{multicast_group_producer_activation_id}}
/// ```
class MulticastGroupProducerActivation extends CustomResource {
  /// The timestamp when the multicast group producer activation was created.
  late final Output<String> createTime;

  /// An optional text description of the multicast group producer activation.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// A unique name for the multicast group producer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final Output<String> multicastGroupProducerActivationId;

  /// The resource name of the multicast group range activationcreated by the
  /// admin in the same zone as this multicast group producer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  late final Output<String> multicastGroupRangeActivation;

  /// The resource name of the multicast producer association that is in the
  /// same zone as this multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  late final Output<String> multicastProducerAssociation;

  /// Identifier. The resource name of the multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupProducerActivations/*`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

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
  late final Output<List<MulticastGroupProducerActivationState>> states;

  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast group producer activation resources. If a group
  /// producer activation is deleted and another with the same name is created,
  /// the new group producer activation is assigned a different unique_id.
  late final Output<String> uniqueId;

  /// The timestamp when the multicast group producer activation
  /// was most recently updated.
  late final Output<String> updateTime;

  MulticastGroupProducerActivation(
    String name, {
    MulticastGroupProducerActivationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastGroupProducerActivation:MulticastGroupProducerActivation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.multicastGroupProducerActivationId =
        registerOutput<String>('multicastGroupProducerActivationId');
    this.multicastGroupRangeActivation =
        registerOutput<String>('multicastGroupRangeActivation');
    this.multicastProducerAssociation =
        registerOutput<String>('multicastProducerAssociation');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states =
        registerOutput<List<MulticastGroupProducerActivationState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
