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
    this.arn,
    this.availabilityZoneId,
    this.clusters,
    this.createdTimestamp,
    this.environmentId,
    this.hostType,
    this.lastModifiedTimestamp,
    this.name,
    this.region,
    this.status,
    this.statusReason,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZoneId: (() {
        final guardedValue = map['availabilityZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusters: (() {
        final guardedValue = map['clusters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      createdTimestamp: (() {
        final guardedValue = map['createdTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: (() {
        final guardedValue = map['environmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostType: (() {
        final guardedValue = map['hostType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedTimestamp: (() {
        final guardedValue = map['lastModifiedTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusReason: (() {
        final guardedValue = map['statusReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
