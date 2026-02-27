import 'package:pulumi/pulumi.dart';
import '../multicast_group_range_log_config/multicast_group_range_log_config.dart';
import '../multicast_group_range_state/multicast_group_range_state.dart';
import 'multicast_group_range_args.dart';

/// Create a multicast group range in the current project.
///
///
/// To get more information about MulticastGroupRange, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastGroupRanges)
/// * How-to Guides
/// * [Create Multicast Group Range](https://docs.cloud.google.com/vpc/docs/multicast/create-group-ranges#create_a_group_range)
///
/// ## Example Usage
///
/// ### Network Services Multicast Group Range Basic
///
///
///
///
/// ## Import
///
/// MulticastGroupRange can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastGroupRanges/{{multicast_group_range_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_group_range_id}}`
///
/// * `{{location}}/{{multicast_group_range_id}}`
///
/// When using the `pulumi import` command, MulticastGroupRange can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRange:MulticastGroupRange default projects/{{project}}/locations/{{location}}/multicastGroupRanges/{{multicast_group_range_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRange:MulticastGroupRange default {{project}}/{{location}}/{{multicast_group_range_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRange:MulticastGroupRange default {{location}}/{{multicast_group_range_id}}
/// ```
class MulticastGroupRange extends CustomResource {
  /// A list of consumer projects that are allowed to subscribe to the multicast
  /// IP addresses within the range defined by this MulticastGroupRange. The
  /// project can be specified using its project ID or project number. If left
  /// empty, then all consumer projects are allowed (unless
  /// require_explicit_accept is set to true) once they have VPC networks
  /// associated to the multicast domain. The current max length of the accept
  /// list is 100.
  late final Output<List<String>?> consumerAcceptLists;

  /// [Output only] The timestamp when the multicast group range was
  /// created.
  late final Output<String> createTime;

  /// An optional text description of the multicast group range.
  late final Output<String?> description;

  /// Multicast group range's distribution scope. Intra-zone or intra-region
  /// cross-zone is supported, with default value being intra-region. Cross
  /// region distribution is not supported.
  /// Possible values:
  /// INTRA_ZONE
  /// INTRA_REGION
  late final Output<String?> distributionScope;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// [Output only] The multicast group IP address range.
  late final Output<String> ipCidrRange;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  late final Output<MulticastGroupRangeLogConfig?> logConfig;

  /// The resource name of the multicast domain in which to create this
  /// multicast group range.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  late final Output<String> multicastDomain;

  /// A unique name for the multicast group range.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final Output<String> multicastGroupRangeId;

  /// Identifier. The resource name of the multicast group range.
  /// Use the following format:
  /// `projects/*/locations/global/multicastGroupRanges/*`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Whether an empty consumer_accept_list will deny all consumer projects.
  late final Output<bool?> requireExplicitAccept;

  /// The resource name of the internal range reserved for this
  /// multicast group range.
  /// The internal range must be a Class D address (224.0.0.0 to 239.255.255.255)
  /// and have a prefix length >= 23.
  /// Use the following format:
  /// `projects/*/locations/global/internalRanges/*`.
  late final Output<String> reservedInternalRange;

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
  late final Output<List<MulticastGroupRangeState>> states;

  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast group range resources. If a group
  /// range is deleted and another with the same name is created, the new
  /// group range is assigned a different unique_id.
  late final Output<String> uniqueId;

  /// [Output only] The timestamp when the multicast group range was most
  /// recently updated.
  late final Output<String> updateTime;

  MulticastGroupRange(
    String name, {
    MulticastGroupRangeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastGroupRange:MulticastGroupRange',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consumerAcceptLists =
        registerOutput<List<String>?>('consumerAcceptLists');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.distributionScope = registerOutput<String?>('distributionScope');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.logConfig = registerOutput<MulticastGroupRangeLogConfig?>('logConfig');
    this.multicastDomain = registerOutput<String>('multicastDomain');
    this.multicastGroupRangeId =
        registerOutput<String>('multicastGroupRangeId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.requireExplicitAccept = registerOutput<bool?>('requireExplicitAccept');
    this.reservedInternalRange =
        registerOutput<String>('reservedInternalRange');
    this.states = registerOutput<List<MulticastGroupRangeState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
