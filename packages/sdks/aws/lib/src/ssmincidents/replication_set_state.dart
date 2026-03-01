// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_set_region.dart';

/// Input properties used for looking up and filtering ReplicationSet resources.
class ReplicationSetState {
  /// The ARN of the replication set.
  final pulumi.Input<String>? arn;
  /// The ARN of the user who created the replication set.
  final pulumi.Input<String>? createdBy;
  /// If `true`, the last region in a replication set cannot be deleted.
  final pulumi.Input<bool>? deletionProtected;
  /// A timestamp showing when the replication set was last modified.
  final pulumi.Input<String>? lastModifiedBy;
  /// The replication set's Regions. Use `regions` instead.
  final pulumi.Input<List<ReplicationSetRegion>>? region;
  /// The replication set's Regions.
  final pulumi.Input<List<ReplicationSetRegion>>? regions;
  /// The current status of the Region.
  /// * Valid Values: `ACTIVE` | `CREATING` | `UPDATING` | `DELETING` | `FAILED`
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For information about the maximum allowed number of Regions and tag value constraints, see [CreateReplicationSet in the *AWS Systems Manager Incident Manager API Reference*](https://docs.aws.amazon.com/incident-manager/latest/APIReference/API_CreateReplicationSet.html).
  ///
  /// > **NOTE:** The Region specified by a provider must always be one of the Regions specified for the replication set. This is especially important when you perform complex update operations.
  ///
  /// > **NOTE:** After a replication set is created, you can add or delete only one Region at a time.
  ///
  /// > **NOTE:** Incident Manager does not support updating the customer managed key associated with a replication set. Instead, for a replication set with multiple Regions, you must first delete a Region from the replication set, then re-add it with a different customer managed key in separate deploy operations. For a replication set with only one Region, the entire replication set must be deleted and recreated. To do this, comment out the replication set and all response plans, and then run the deploy command to recreate the replication set with the new customer managed key.
  ///
  /// > **NOTE:** You must either use AWS-owned keys on all regions of a replication set, or customer managed keys. To change between an AWS owned key and a customer managed key, a replication set and it associated data must be deleted and recreated.
  ///
  /// > **NOTE:** If possible, create all the customer managed keys you need (using the deploy command) before you create the replication set, or create the keys and replication set in the same deploy command. Otherwise, to delete a replication set, you must run one deploy command to delete the replication set and another to delete the AWS KMS keys used by the replication set. Deleting the AWS KMS keys before deleting the replication set results in an error. In that case, you must manually reenable the deleted key using the AWS Management Console before you can delete the replication set.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ReplicationSetState].
  /// [arn] The ARN of the replication set.
  /// [createdBy] The ARN of the user who created the replication set.
  /// [deletionProtected] If `true`, the last region in a replication set cannot be deleted.
  /// [lastModifiedBy] A timestamp showing when the replication set was last modified.
  /// [region] The replication set's Regions. Use `regions` instead.
  /// [regions] The replication set's Regions.
  /// [status] The current status of the Region.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ReplicationSetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdBy,
    pulumi.Output<bool>? deletionProtected,
    pulumi.Output<String>? lastModifiedBy,
    pulumi.Output<List<ReplicationSetRegion>>? region,
    pulumi.Output<List<ReplicationSetRegion>>? regions,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      deletionProtected = pulumi.Input.asOptionalInput<bool>(deletionProtected),
      lastModifiedBy = pulumi.Input.asOptionalInput<String>(lastModifiedBy),
      region = pulumi.Input.asOptionalInput<List<ReplicationSetRegion>>(region),
      regions = pulumi.Input.asOptionalInput<List<ReplicationSetRegion>>(regions),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdBy': ?createdBy,
      'deletionProtected': ?deletionProtected,
      'lastModifiedBy': ?lastModifiedBy,
      'region': ?pulumi.Input.mapOptionalInputValue<List<ReplicationSetRegion>, List<Map<String, dynamic>>>(region, (value) => pulumi.Input.encodeList<ReplicationSetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationSetRegion>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<ReplicationSetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ReplicationSetState.fromMap(Map<String, dynamic> map) {
    return ReplicationSetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      deletionProtected: map['deletionProtected'] == null ? null : pulumi.Output.create<bool>(map['deletionProtected'] as bool),
      lastModifiedBy: map['lastModifiedBy'] == null ? null : pulumi.Output.create<String>(map['lastModifiedBy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<List<ReplicationSetRegion>>(pulumi.Input.decodeList<ReplicationSetRegion>(map['region'], (value) => ReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>()))),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<ReplicationSetRegion>>(pulumi.Input.decodeList<ReplicationSetRegion>(map['regions'], (value) => ReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

