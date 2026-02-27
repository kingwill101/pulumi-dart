import 'package:pulumi/pulumi.dart';
import '../multicast_domain_activation_state/multicast_domain_activation_state.dart';
import '../multicast_domain_activation_traffic_spec/multicast_domain_activation_traffic_spec.dart';
import 'multicast_domain_activation_args.dart';

/// Create a multicast domain activation in the specified location of the current project.
///
///
/// To get more information about MulticastDomainActivation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastDomainActivations)
/// * How-to Guides
/// * [Create Multicast Domain Activation](https://docs.cloud.google.com/vpc/docs/multicast/create-domains#activate-domain)
///
/// ## Example Usage
///
/// ### Network Services Multicast Domain Activation Basic
///
///
///
///
/// ## Import
///
/// MulticastDomainActivation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastDomainActivations/{{multicast_domain_activation_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_domain_activation_id}}`
///
/// * `{{location}}/{{multicast_domain_activation_id}}`
///
/// When using the `pulumi import` command, MulticastDomainActivation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomainActivation:MulticastDomainActivation default projects/{{project}}/locations/{{location}}/multicastDomainActivations/{{multicast_domain_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomainActivation:MulticastDomainActivation default {{project}}/{{location}}/{{multicast_domain_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomainActivation:MulticastDomainActivation default {{location}}/{{multicast_domain_activation_id}}
/// ```
class MulticastDomainActivation extends CustomResource {
  /// The URL of the admin network.
  late final Output<String> adminNetwork;

  /// The timestamp when the multicast domain activation was
  /// created.
  late final Output<String> createTime;

  /// An optional text description of the multicast domain activation.
  late final Output<String?> description;

  /// Option to allow disabling placement policy for multicast infrastructure.
  /// Only applicable if the activation is for a domain associating with a
  /// multicast domain group.
  late final Output<bool> disablePlacementPolicy;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The resource name of the multicast domain to activate.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  late final Output<String> multicastDomain;

  /// A unique name for the multicast domain activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final Output<String> multicastDomainActivationId;

  /// Identifier. The resource name of the multicast domain activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastDomainActivations/*`.
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
  late final Output<List<MulticastDomainActivationState>> states;

  /// Specifies the traffic volume and multicast group scale parameters that are
  /// used to set up multicast infrastructure for a multicast domain in a zone.
  /// Structure is documented below.
  late final Output<MulticastDomainActivationTrafficSpec?> trafficSpec;

  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast domain activation resources. If a domain
  /// activation is deleted and another with the same name is created, the new
  /// domain activation is assigned a different unique_id.
  late final Output<String> uniqueId;

  /// The timestamp when the multicast domain activation was most
  /// recently updated.
  late final Output<String> updateTime;

  MulticastDomainActivation(
    String name, {
    MulticastDomainActivationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastDomainActivation:MulticastDomainActivation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminNetwork = registerOutput<String>('adminNetwork');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.disablePlacementPolicy =
        registerOutput<bool>('disablePlacementPolicy');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.multicastDomain = registerOutput<String>('multicastDomain');
    this.multicastDomainActivationId =
        registerOutput<String>('multicastDomainActivationId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states =
        registerOutput<List<MulticastDomainActivationState>>('states');
    this.trafficSpec =
        registerOutput<MulticastDomainActivationTrafficSpec?>('trafficSpec');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
