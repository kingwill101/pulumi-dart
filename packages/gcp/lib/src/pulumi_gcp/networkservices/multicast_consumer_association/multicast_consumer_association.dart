import 'package:pulumi/pulumi.dart';
import '../multicast_consumer_association_state/multicast_consumer_association_state.dart';
import 'multicast_consumer_association_args.dart';

/// Create a multicast consumer association in the specified location of the current project.
///
///
/// To get more information about MulticastConsumerAssociation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastConsumerAssociations)
/// * How-to Guides
/// * [Create Multicast Consumer Association](https://docs.cloud.google.com/vpc/docs/multicast/enable-consumer-network#add-consumer)
///
/// ## Example Usage
///
/// ### Network Services Multicast Consumer Association Basic
///
///
///
///
/// ## Import
///
/// MulticastConsumerAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastConsumerAssociations/{{multicast_consumer_association_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_consumer_association_id}}`
///
/// * `{{location}}/{{multicast_consumer_association_id}}`
///
/// When using the `pulumi import` command, MulticastConsumerAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation default projects/{{project}}/locations/{{location}}/multicastConsumerAssociations/{{multicast_consumer_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation default {{project}}/{{location}}/{{multicast_consumer_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation default {{location}}/{{multicast_consumer_association_id}}
/// ```
class MulticastConsumerAssociation extends CustomResource {
  /// [Output only] The timestamp when the multicast consumer association was
  /// created.
  late final Output<String> createTime;

  /// An optional text description of the multicast consumer association.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// A unique name for the multicast consumer association.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final Output<String> multicastConsumerAssociationId;

  /// The resource name of the multicast domain activation that is in the
  /// same zone as this multicast consumer association.
  /// Use the following format:
  /// // `projects/*/locations/*/multicastDomainActivations/*`.
  late final Output<String> multicastDomainActivation;

  /// Identifier. The resource name of the multicast consumer association.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  late final Output<String> name;

  /// The resource name of the multicast consumer VPC network.
  /// Use following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  late final Output<String> network;

  /// [Output only] A Compute Engine (placement
  /// policy)[https://cloud.google.com/compute/docs/instances/placement-policies-overview]
  /// that can be used to place virtual machine (VM) instances as multicast
  /// consumers close to the multicast infrastructure created for this domain,
  /// on a best effort basis.
  late final Output<String> placementPolicy;

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
  late final Output<List<MulticastConsumerAssociationState>> states;

  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast consumer association resources. If a consumer
  /// association is deleted and another with the same name is created, the new
  /// consumer association is assigned a different unique_id.
  late final Output<String> uniqueId;

  /// [Output only] The timestamp when the Multicast Consumer Association was
  /// most recently updated.
  late final Output<String> updateTime;

  MulticastConsumerAssociation(
    String name, {
    MulticastConsumerAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation',
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
    this.multicastConsumerAssociationId =
        registerOutput<String>('multicastConsumerAssociationId');
    this.multicastDomainActivation =
        registerOutput<String>('multicastDomainActivation');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.placementPolicy = registerOutput<String>('placementPolicy');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states =
        registerOutput<List<MulticastConsumerAssociationState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
