import 'package:pulumi/pulumi.dart' as pulumi;
import '../multicast_domain_group_state/multicast_domain_group_state.dart';
import 'multicast_domain_group_args.dart';

/// Create a multicast domain group in the current project.
///
///
/// To get more information about MulticastDomainGroup, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastDomainGroups)
/// * How-to Guides
/// * [Create Multicast Domain Group](https://docs.cloud.google.com/vpc/docs/multicast/create-domains#create-domain-group)
///
/// ## Example Usage
///
/// ### Network Services Multicast Domain Group Basic
///
///
///
///
/// ## Import
///
/// MulticastDomainGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastDomainGroups/{{multicast_domain_group_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_domain_group_id}}`
///
/// * `{{location}}/{{multicast_domain_group_id}}`
///
/// When using the `pulumi import` command, MulticastDomainGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomainGroup:MulticastDomainGroup default projects/{{project}}/locations/{{location}}/multicastDomainGroups/{{multicast_domain_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomainGroup:MulticastDomainGroup default {{project}}/{{location}}/{{multicast_domain_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomainGroup:MulticastDomainGroup default {{location}}/{{multicast_domain_group_id}}
/// ```
class MulticastDomainGroup extends pulumi.CustomResource {
  /// The timestamp when the multicast domain group was created.
  late final pulumi.Output<String> createTime;

  /// An optional text description of the multicast domain group.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// A unique name for the multicast domain group.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastDomainGroupId;

  /// Multicast domains associated with the group.
  /// There can be at most 2 multicast domains in a group.
  late final pulumi.Output<List<String>> multicastDomains;

  /// Identifier. The resource name of the multicast domain group.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomainGroups/*`
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
  late final pulumi.Output<List<MulticastDomainGroupState>> states;

  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast domain group resources. If a domain is deleted
  /// and another with the same name is created, the new domain is assigned a
  /// different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// The timestamp when the multicast domain group was most
  /// recently updated.
  late final pulumi.Output<String> updateTime;

  MulticastDomainGroup(
    String name, {
    MulticastDomainGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastDomainGroup:MulticastDomainGroup',
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
    this.multicastDomainGroupId =
        registerOutput<String>('multicastDomainGroupId');
    this.multicastDomains = registerOutput<List<String>>('multicastDomains');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states = registerOutput<List<MulticastDomainGroupState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
