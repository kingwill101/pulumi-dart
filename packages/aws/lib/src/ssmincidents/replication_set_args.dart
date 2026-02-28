// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_set_region.dart';

/// {@template pulumi_ssmincidents_replication_set_replication_set_args_doc}
/// The set of arguments for ReplicationSet.
/// {@endtemplate}
/// {@macro pulumi_ssmincidents_replication_set_replication_set_args_doc}
class ReplicationSetArgs {
  /// The replication set's Regions. Use `regions` instead.
  final pulumi.Input<List<ReplicationSetRegion>>? region;

  /// The replication set's Regions.
  final pulumi.Input<List<ReplicationSetRegion>>? regions;

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

  /// Creates a new [ReplicationSetArgs].
  /// [region] The replication set's Regions. Use `regions` instead.
  /// [regions] The replication set's Regions.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ReplicationSetArgs({
    List<ReplicationSetRegion>? region,
    List<ReplicationSetRegion>? regions,
    Map<String, String>? tags,
  })  : region =
            pulumi.Input.asOptionalInput<List<ReplicationSetRegion>>(region),
        regions =
            pulumi.Input.asOptionalInput<List<ReplicationSetRegion>>(regions),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = pulumi.Input.mapOptionalInputValue<
              List<ReplicationSetRegion>, List<Map<String, dynamic>>>(
          regionValue,
          (value) => pulumi.Input.encodeList<ReplicationSetRegion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = pulumi.Input.mapOptionalInputValue<
              List<ReplicationSetRegion>, List<Map<String, dynamic>>>(
          regionsValue,
          (value) => pulumi.Input.encodeList<ReplicationSetRegion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ReplicationSetArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationSetArgs(
      region: map['region'] == null
          ? null
          : pulumi.Input.decodeList<ReplicationSetRegion>(
              map['region'],
              (value) => ReplicationSetRegion.fromMap(
                  (value as Map).cast<String, dynamic>())),
      regions: map['regions'] == null
          ? null
          : pulumi.Input.decodeList<ReplicationSetRegion>(
              map['regions'],
              (value) => ReplicationSetRegion.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
