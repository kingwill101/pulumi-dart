// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Instance.
class InstanceParallelstoreArgs {
  /// Required. Immutable. Storage capacity of Parallelstore instance in Gibibytes (GiB).
  final pulumi.Input<String> capacityGib;

  /// Parallelstore Instance deployment type.
  /// Possible values:
  /// DEPLOYMENT_TYPE_UNSPECIFIED
  /// SCRATCH
  /// PERSISTENT
  final pulumi.Input<String>? deploymentType;

  /// The description of the instance. 2048 characters or less.
  final pulumi.Input<String>? description;

  /// Stripe level for directories.
  /// MIN when directory has a small number of files.
  /// MAX when directory has a large number of files.
  /// Possible values:
  /// DIRECTORY_STRIPE_LEVEL_UNSPECIFIED
  /// DIRECTORY_STRIPE_LEVEL_MIN
  /// DIRECTORY_STRIPE_LEVEL_BALANCED
  /// DIRECTORY_STRIPE_LEVEL_MAX
  final pulumi.Input<String>? directoryStripeLevel;

  /// Stripe level for files.
  /// MIN better suited for small size files.
  /// MAX higher throughput performance for larger files.
  /// Possible values:
  /// FILE_STRIPE_LEVEL_UNSPECIFIED
  /// FILE_STRIPE_LEVEL_MIN
  /// FILE_STRIPE_LEVEL_BALANCED
  /// FILE_STRIPE_LEVEL_MAX
  final pulumi.Input<String>? fileStripeLevel;

  /// The logical name of the Parallelstore instance in the user project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project/ location
  final pulumi.Input<String> instanceId;

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
  final pulumi.Input<Map<String, String>>? labels;

  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String> location;

  /// Immutable. The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc)
  /// to which the instance is connected.
  final pulumi.Input<String>? network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Immutable. Contains the id of the allocated IP address range
  /// associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. If no range id is provided all ranges will
  /// be considered.
  final pulumi.Input<String>? reservedIpRange;

  InstanceParallelstoreArgs({
    required this.capacityGib,
    this.deploymentType,
    this.description,
    this.directoryStripeLevel,
    this.fileStripeLevel,
    required this.instanceId,
    this.labels,
    required this.location,
    this.network,
    this.project,
    this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityGib'] = capacityGib;
    final deploymentTypeValue = deploymentType;
    if (deploymentTypeValue != null) {
      map['deploymentType'] = deploymentTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final directoryStripeLevelValue = directoryStripeLevel;
    if (directoryStripeLevelValue != null) {
      map['directoryStripeLevel'] = directoryStripeLevelValue;
    }
    final fileStripeLevelValue = fileStripeLevel;
    if (fileStripeLevelValue != null) {
      map['fileStripeLevel'] = fileStripeLevelValue;
    }
    map['instanceId'] = instanceId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservedIpRangeValue = reservedIpRange;
    if (reservedIpRangeValue != null) {
      map['reservedIpRange'] = reservedIpRangeValue;
    }
    return map;
  }

  factory InstanceParallelstoreArgs.fromMap(Map<String, dynamic> map) {
    return InstanceParallelstoreArgs(
      capacityGib: pulumi.Input.asInput<String>(map['capacityGib']),
      deploymentType:
          pulumi.Input.asOptionalInput<String>(map['deploymentType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      directoryStripeLevel:
          pulumi.Input.asOptionalInput<String>(map['directoryStripeLevel']),
      fileStripeLevel:
          pulumi.Input.asOptionalInput<String>(map['fileStripeLevel']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservedIpRange:
          pulumi.Input.asOptionalInput<String>(map['reservedIpRange']),
    );
  }
}
