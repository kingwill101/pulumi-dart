// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KxScalingGroup resources.
class KxScalingGroupState {
  /// Amazon Resource Name (ARN) identifier of the KX Scaling Group.
  final pulumi.Input<String>? arn;
  /// The availability zone identifiers for the requested regions.
  final pulumi.Input<String>? availabilityZoneId;
  /// The list of Managed kdb clusters that are currently active in the given scaling group.
  final pulumi.Input<List<String>>? clusters;
  /// The timestamp at which the scaling group was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  final pulumi.Input<String>? createdTimestamp;
  /// A unique identifier for the kdb environment, where you want to create the scaling group.
  final pulumi.Input<String>? environmentId;
  /// The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? hostType;
  /// Last timestamp at which the scaling group was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? lastModifiedTimestamp;
  /// Unique name for the scaling group that you want to create.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of scaling group.
  /// * `CREATING` - The scaling group creation is in progress.
  /// * `CREATE_FAILED` - The scaling group creation has failed.
  /// * `ACTIVE` - The scaling group is active.
  /// * `UPDATING` - The scaling group is in the process of being updated.
  /// * `UPDATE_FAILED` - The update action failed.
  /// * `DELETING` - The scaling group is in the process of being deleted.
  /// * `DELETE_FAILED` - The system failed to delete the scaling group.
  /// * `DELETED` - The scaling group is successfully deleted.
  final pulumi.Input<String>? status;
  /// The error message when a failed state occurs.
  final pulumi.Input<String>? statusReason;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KxScalingGroupState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX Scaling Group.
  /// [availabilityZoneId] The availability zone identifiers for the requested regions.
  /// [clusters] The list of Managed kdb clusters that are currently active in the given scaling group.
  /// [createdTimestamp] The timestamp at which the scaling group was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  /// [environmentId] A unique identifier for the kdb environment, where you want to create the scaling group.
  /// [hostType] The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  /// [lastModifiedTimestamp] Last timestamp at which the scaling group was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [name] Unique name for the scaling group that you want to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of scaling group.
  /// [statusReason] The error message when a failed state occurs.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KxScalingGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<List<String>>? clusters,
    pulumi.Output<String>? createdTimestamp,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? hostType,
    pulumi.Output<String>? lastModifiedTimestamp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      clusters = pulumi.Input.asOptionalInput<List<String>>(clusters),
      createdTimestamp = pulumi.Input.asOptionalInput<String>(createdTimestamp),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      hostType = pulumi.Input.asOptionalInput<String>(hostType),
      lastModifiedTimestamp = pulumi.Input.asOptionalInput<String>(lastModifiedTimestamp),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZoneId': ?availabilityZoneId,
      'clusters': ?clusters,
      'createdTimestamp': ?createdTimestamp,
      'environmentId': ?environmentId,
      'hostType': ?hostType,
      'lastModifiedTimestamp': ?lastModifiedTimestamp,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KxScalingGroupState.fromMap(Map<String, dynamic> map) {
    return KxScalingGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      clusters: map['clusters'] == null ? null : pulumi.Output.create<List<String>>((map['clusters'] as List).cast<String>()),
      createdTimestamp: map['createdTimestamp'] == null ? null : pulumi.Output.create<String>(map['createdTimestamp'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      hostType: map['hostType'] == null ? null : pulumi.Output.create<String>(map['hostType'] as String),
      lastModifiedTimestamp: map['lastModifiedTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTimestamp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

