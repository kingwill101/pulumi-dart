import 'package:pulumi/pulumi.dart';
import '../multicast_domain_connection_config/multicast_domain_connection_config.dart';
import '../multicast_domain_state/multicast_domain_state.dart';
import 'multicast_domain_args.dart';

/// Create a multicast domain in the current project.
///
///
/// To get more information about MulticastDomain, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastDomains)
/// * How-to Guides
/// * [Create Multicast Domain](https://docs.cloud.google.com/vpc/docs/multicast/create-domains#create-domain)
///
/// ## Example Usage
///
/// ### Network Services Multicast Domain Basic
///
///
///
///
/// ## Import
///
/// MulticastDomain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastDomains/{{multicast_domain_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_domain_id}}`
///
/// * `{{location}}/{{multicast_domain_id}}`
///
/// When using the `pulumi import` command, MulticastDomain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomain:MulticastDomain default projects/{{project}}/locations/{{location}}/multicastDomains/{{multicast_domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomain:MulticastDomain default {{project}}/{{location}}/{{multicast_domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomain:MulticastDomain default {{location}}/{{multicast_domain_id}}
/// ```
class MulticastDomain extends CustomResource {
  /// The resource name of the multicast admin VPC network.
  /// Use the following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  late final Output<String> adminNetwork;

  /// VPC connectivity information.
  /// Structure is documented below.
  late final Output<MulticastDomainConnectionConfig> connectionConfig;

  /// The timestamp when the multicast domain was created.
  late final Output<String> createTime;

  /// An optional text description of the multicast domain.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The multicast domain group this domain should be associated with.
  /// Use the following format:
  /// `projects/{project}/locations/global/multicastDomainGroups/{multicast_domain_group}`.
  late final Output<String?> multicastDomainGroup;

  /// A unique name for the multicast domain.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final Output<String> multicastDomainId;

  /// Identifier. The resource name of the multicast domain.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`
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
  late final Output<List<MulticastDomainState>> states;

  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast domain resources. If a domain is deleted and
  /// another with the same name is created, the new domain is assigned a
  /// different unique_id.
  late final Output<String> uniqueId;

  /// The timestamp when the multicast domain was most recently
  /// updated.
  late final Output<String> updateTime;

  MulticastDomain(
    String name, {
    MulticastDomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastDomain:MulticastDomain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminNetwork = registerOutput<String>('adminNetwork');
    this.connectionConfig =
        registerOutput<MulticastDomainConnectionConfig>('connectionConfig');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.multicastDomainGroup = registerOutput<String?>('multicastDomainGroup');
    this.multicastDomainId = registerOutput<String>('multicastDomainId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states = registerOutput<List<MulticastDomainState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
