import 'package:pulumi/pulumi.dart' as pulumi;
import '../multicast_producer_association_state/multicast_producer_association_state.dart';
import 'multicast_producer_association_args.dart';

/// Create a multicast producer association in the specified location of the current project.
///
///
/// To get more information about MulticastProducerAssociation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastProducerAssociations)
/// * How-to Guides
/// * [Create Multicast Producer Association](https://docs.cloud.google.com/vpc/docs/multicast/enable-producer-network#create-producer)
///
/// ## Example Usage
///
/// ### Network Services Multicast Producer Association Basic
///
///
///
///
/// ## Import
///
/// MulticastProducerAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastProducerAssociations/{{multicast_producer_association_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_producer_association_id}}`
///
/// * `{{location}}/{{multicast_producer_association_id}}`
///
/// When using the `pulumi import` command, MulticastProducerAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation default projects/{{project}}/locations/{{location}}/multicastProducerAssociations/{{multicast_producer_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation default {{project}}/{{location}}/{{multicast_producer_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation default {{location}}/{{multicast_producer_association_id}}
/// ```
class MulticastProducerAssociation extends pulumi.CustomResource {
  /// [Output only] The timestamp when the multicast producer association was
  /// created.
  late final pulumi.Output<String> createTime;

  /// An optional text description of the multicast producer association.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// The resource name of the multicast domain activation that is in the
  /// same zone as this multicast producer association.
  /// Use the following format:
  /// // `projects/*/locations/*/multicastDomainActivations/*`.
  late final pulumi.Output<String> multicastDomainActivation;

  /// A unique name for the multicast producer association.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastProducerAssociationId;

  /// Identifier. The resource name of the multicast producer association.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  late final pulumi.Output<String> name;

  /// The resource name of the multicast producer VPC network.
  /// Use following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  late final pulumi.Output<String> network;

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
  late final pulumi.Output<List<MulticastProducerAssociationState>> states;

  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast producer association resources. If a producer
  /// association is deleted and another with the same name is created, the new
  /// producer association is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// [Output only] The timestamp when the Multicast Producer Association was
  /// most recently updated.
  late final pulumi.Output<String> updateTime;

  MulticastProducerAssociation(
    String name, {
    MulticastProducerAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation',
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
    this.multicastDomainActivation =
        registerOutput<String>('multicastDomainActivation');
    this.multicastProducerAssociationId =
        registerOutput<String>('multicastProducerAssociationId');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states =
        registerOutput<List<MulticastProducerAssociationState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
