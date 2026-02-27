import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_parallelstore_args.dart';

/// A Parallelstore Instance.
///
///
///
/// ## Example Usage
///
/// ### Parallelstore Instance Basic Beta
///
///
///
/// ### Parallelstore Instance Basic
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
/// $ pulumi import gcp:parallelstore/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parallelstore/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parallelstore/instance:Instance default {{location}}/{{instance_id}}
/// ```
class InstanceParallelstore extends pulumi.CustomResource {
  /// Output only. List of access_points.
  /// Contains a list of IPv4 addresses used for client side configuration.
  late final pulumi.Output<List<String>> accessPoints;

  /// Required. Immutable. Storage capacity of Parallelstore instance in Gibibytes (GiB).
  late final pulumi.Output<String> capacityGib;

  /// The time when the instance was created.
  late final pulumi.Output<String> createTime;

  /// The version of DAOS software running in the instance.
  late final pulumi.Output<String> daosVersion;

  /// Parallelstore Instance deployment type.
  /// Possible values:
  /// DEPLOYMENT_TYPE_UNSPECIFIED
  /// SCRATCH
  /// PERSISTENT
  late final pulumi.Output<String?> deploymentType;

  /// The description of the instance. 2048 characters or less.
  late final pulumi.Output<String?> description;

  /// Stripe level for directories.
  /// MIN when directory has a small number of files.
  /// MAX when directory has a large number of files.
  /// Possible values:
  /// DIRECTORY_STRIPE_LEVEL_UNSPECIFIED
  /// DIRECTORY_STRIPE_LEVEL_MIN
  /// DIRECTORY_STRIPE_LEVEL_BALANCED
  /// DIRECTORY_STRIPE_LEVEL_MAX
  late final pulumi.Output<String?> directoryStripeLevel;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Immutable. Contains the id of the allocated IP address
  /// range associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. This field is populated by the service
  /// and contains the value currently used by the service.
  late final pulumi.Output<String> effectiveReservedIpRange;

  /// Stripe level for files.
  /// MIN better suited for small size files.
  /// MAX higher throughput performance for larger files.
  /// Possible values:
  /// FILE_STRIPE_LEVEL_UNSPECIFIED
  /// FILE_STRIPE_LEVEL_MIN
  /// FILE_STRIPE_LEVEL_BALANCED
  /// FILE_STRIPE_LEVEL_MAX
  late final pulumi.Output<String?> fileStripeLevel;

  /// The logical name of the Parallelstore instance in the user project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project/ location
  late final pulumi.Output<String> instanceId;

  /// Cloud Labels are a flexible and lightweight mechanism for
  /// organizing cloud resources into groups that reflect a customer's organizational
  /// needs and deployment strategies. Cloud Labels can be used to filter collections
  /// of resources. They can be used to control how resource metrics are aggregated.
  /// And they can be used as arguments to policy management rules (e.g. route, firewall,
  /// load balancing, etc.).
  /// * Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: `a-z{0,62}`.
  /// * Label values must be between 0 and 63 characters long and must conform
  /// to the regular expression `[a-z0-9_-]{0,63}`.
  /// * No more than 64 labels can be associated with a given resource.
  /// See https://goo.gl/xmQnxf for more information on and examples of labels.
  /// If you plan to use labels in your own code, please note that additional
  /// characters may be allowed in the future. Therefore, you are advised to use
  /// an internal label representation, such as JSON, which doesn't rely upon
  /// specific characters being disallowed.  For example, representing labels
  /// as the string:  `name + "_" + value` would prove problematic if we were to
  /// allow `"_"` in a future release. "
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Part of `parent`. See documentation of `projectsId`.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance_id}`
  late final pulumi.Output<String> name;

  /// Immutable. The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc)
  /// to which the instance is connected.
  late final pulumi.Output<String?> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Immutable. Contains the id of the allocated IP address range
  /// associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. If no range id is provided all ranges will
  /// be considered.
  late final pulumi.Output<String?> reservedIpRange;

  /// The instance state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// FAILED
  /// UPGRADING
  late final pulumi.Output<String> state;

  /// The time when the instance was updated.
  late final pulumi.Output<String> updateTime;

  InstanceParallelstore(
    String name, {
    InstanceParallelstoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parallelstore/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPoints = registerOutput<List<String>>('accessPoints');
    this.capacityGib = registerOutput<String>('capacityGib');
    this.createTime = registerOutput<String>('createTime');
    this.daosVersion = registerOutput<String>('daosVersion');
    this.deploymentType = registerOutput<String?>('deploymentType');
    this.description = registerOutput<String?>('description');
    this.directoryStripeLevel = registerOutput<String?>('directoryStripeLevel');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.effectiveReservedIpRange =
        registerOutput<String>('effectiveReservedIpRange');
    this.fileStripeLevel = registerOutput<String?>('fileStripeLevel');
    this.instanceId = registerOutput<String>('instanceId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reservedIpRange = registerOutput<String?>('reservedIpRange');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
