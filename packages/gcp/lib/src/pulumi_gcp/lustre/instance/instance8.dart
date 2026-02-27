import 'package:pulumi/pulumi.dart';
import '../instance_access_rules_options/instance_access_rules_options.dart';
import 'instance_args8.dart';

/// A Managed Lustre instance
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/managed-lustre/docs/create-instance)
///
/// ## Example Usage
///
/// ### Lustre Instance Basic
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{instance_id}}`
///
/// * `{{location}}/{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default {{location}}/{{instance_id}}
/// ```
class Instance8 extends CustomResource {
  /// Access control rules for the Lustre instance. Configures default root
  /// squashing behavior and specific access rules based on IP addresses.
  /// Structure is documented below.
  late final Output<InstanceAccessRulesOptions?> accessRulesOptions;

  /// The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// are from `18000` to `954000`, in increments of 9000.
  late final Output<String> capacityGib;

  /// Timestamp when the instance was created.
  late final Output<String> createTime;

  /// A user-readable description of the instance.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The filesystem name for this instance. This name is used by client-side
  /// tools, including when mounting the instance. Must be eight characters or
  /// less and can only contain letters and numbers.
  late final Output<String> filesystem;

  /// Indicates whether you want to enable support for GKE clients. By default,
  /// GKE clients are not supported.
  late final Output<bool?> gkeSupportEnabled;

  /// The name of the Managed Lustre instance.
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  late final Output<String> instanceId;

  /// The KMS key id to use for encryption of the Lustre instance.
  late final Output<String?> kmsKey;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Mount point of the instance in the format `IP_ADDRESS@tcp:/FILESYSTEM`.
  late final Output<String> mountPoint;

  /// Identifier. The name of the instance.
  late final Output<String> name;

  /// The full name of the VPC network to which the instance is connected.
  /// Must be in the format
  /// `projects/{project_id}/global/networks/{network_name}`.
  late final Output<String> network;

  /// The throughput of the instance in MB/s/TiB.
  /// Valid values are 125, 250, 500, 1000.
  late final Output<String> perUnitStorageThroughput;

  /// The placement policy name for the instance in the format of
  /// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
  late final Output<String?> placementPolicy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The state of the instance.
  /// Please see https://cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances#state for values
  late final Output<String> state;

  /// The reason why the instance is in a certain state.
  late final Output<String> stateReason;

  /// Timestamp when the instance was last updated.
  late final Output<String> updateTime;

  Instance8(
    String name, {
    InstanceArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:lustre/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessRulesOptions =
        registerOutput<InstanceAccessRulesOptions?>('accessRulesOptions');
    this.capacityGib = registerOutput<String>('capacityGib');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.filesystem = registerOutput<String>('filesystem');
    this.gkeSupportEnabled = registerOutput<bool?>('gkeSupportEnabled');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mountPoint = registerOutput<String>('mountPoint');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.perUnitStorageThroughput =
        registerOutput<String>('perUnitStorageThroughput');
    this.placementPolicy = registerOutput<String?>('placementPolicy');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
