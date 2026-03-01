// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_destination.dart';
import 'bucket_replication_encryption_configuration.dart';
import 'bucket_replication_prefix_set.dart';
import 'bucket_replication_progress.dart';
import 'bucket_replication_rtc.dart';
import 'bucket_replication_source_selection_criteria.dart';

/// Input properties used for looking up and filtering BucketReplication resources.
class BucketReplicationState {
  /// The operations that can be synchronized to the destination bucket. You can set action to one or more of the following operation types. Valid values: `ALL`(contains PUT, DELETE, and ABORT), `PUT`, `DELETE` and `ABORT`. Defaults to `ALL`.
  final pulumi.Input<String>? action;
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
  /// Specifies the destination for the rule. See `destination` below.
  final pulumi.Input<BucketReplicationDestination>? destination;
  /// Specifies the encryption configuration for the objects replicated to the destination bucket. See `encryption_configuration` below.
  final pulumi.Input<BucketReplicationEncryptionConfiguration>? encryptionConfiguration;
  /// Specifies whether to replicate historical data from the source bucket to the destination bucket before data replication is enabled. Can be `enabled` or `disabled`. Defaults to `enabled`.
  final pulumi.Input<String>? historicalObjectReplication;
  /// The prefixes used to specify the object to replicate. Only objects that match the prefix are replicated to the destination bucket. See `prefix_set` below.
  final pulumi.Input<BucketReplicationPrefixSet>? prefixSet;
  /// Specifies the progress for querying the progress of a data replication task of a bucket.
  final pulumi.Input<BucketReplicationProgress>? progress;
  /// Configures the Replication Time Control (RTC) feature for a data replication task of a bucket. See `rtc` below.
  final pulumi.Input<BucketReplicationRtc>? rtc;
  /// The ID of the data replication rule.
  final pulumi.Input<String>? ruleId;
  /// Specifies other conditions used to filter the source objects to replicate. See `source_selection_criteria` below.
  final pulumi.Input<BucketReplicationSourceSelectionCriteria>? sourceSelectionCriteria;
  /// The status of the data replication task. Can be starting, doing and closing.
  final pulumi.Input<String>? status;
  /// Specifies the role that you authorize OSS to use to replicate data. If SSE-KMS is specified to encrypt the objects replicated to the destination bucket, it must be specified.
  final pulumi.Input<String>? syncRole;

  /// Creates a new [BucketReplicationState].
  /// [action] The operations that can be synchronized to the destination bucket. You can set action to one or more of the following operation types. Valid values: `ALL`(contains PUT, DELETE, and ABORT), `PUT`, `DELETE` and `ABORT`. Defaults to `ALL`.
  /// [bucket] The name of the bucket.
  /// [destination] Specifies the destination for the rule. See `destination` below.
  /// [encryptionConfiguration] Specifies the encryption configuration for the objects replicated to the destination bucket. See `encryption_configuration` below.
  /// [historicalObjectReplication] Specifies whether to replicate historical data from the source bucket to the destination bucket before data replication is enabled. Can be `enabled` or `disabled`. Defaults to `enabled`.
  /// [prefixSet] The prefixes used to specify the object to replicate. Only objects that match the prefix are replicated to the destination bucket. See `prefix_set` below.
  /// [progress] Specifies the progress for querying the progress of a data replication task of a bucket.
  /// [rtc] Configures the Replication Time Control (RTC) feature for a data replication task of a bucket. See `rtc` below.
  /// [ruleId] The ID of the data replication rule.
  /// [sourceSelectionCriteria] Specifies other conditions used to filter the source objects to replicate. See `source_selection_criteria` below.
  /// [status] The status of the data replication task. Can be starting, doing and closing.
  /// [syncRole] Specifies the role that you authorize OSS to use to replicate data. If SSE-KMS is specified to encrypt the objects replicated to the destination bucket, it must be specified.
  BucketReplicationState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? bucket,
    pulumi.Output<BucketReplicationDestination>? destination,
    pulumi.Output<BucketReplicationEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<String>? historicalObjectReplication,
    pulumi.Output<BucketReplicationPrefixSet>? prefixSet,
    pulumi.Output<BucketReplicationProgress>? progress,
    pulumi.Output<BucketReplicationRtc>? rtc,
    pulumi.Output<String>? ruleId,
    pulumi.Output<BucketReplicationSourceSelectionCriteria>? sourceSelectionCriteria,
    pulumi.Output<String>? status,
    pulumi.Output<String>? syncRole,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      destination = pulumi.Input.asOptionalInput<BucketReplicationDestination>(destination),
      encryptionConfiguration = pulumi.Input.asOptionalInput<BucketReplicationEncryptionConfiguration>(encryptionConfiguration),
      historicalObjectReplication = pulumi.Input.asOptionalInput<String>(historicalObjectReplication),
      prefixSet = pulumi.Input.asOptionalInput<BucketReplicationPrefixSet>(prefixSet),
      progress = pulumi.Input.asOptionalInput<BucketReplicationProgress>(progress),
      rtc = pulumi.Input.asOptionalInput<BucketReplicationRtc>(rtc),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
      sourceSelectionCriteria = pulumi.Input.asOptionalInput<BucketReplicationSourceSelectionCriteria>(sourceSelectionCriteria),
      status = pulumi.Input.asOptionalInput<String>(status),
      syncRole = pulumi.Input.asOptionalInput<String>(syncRole);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'bucket': ?bucket,
      'destination': ?pulumi.Input.mapOptionalInputValue<BucketReplicationDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketReplicationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'historicalObjectReplication': ?historicalObjectReplication,
      'prefixSet': ?pulumi.Input.mapOptionalInputValue<BucketReplicationPrefixSet, Map<String, dynamic>>(prefixSet, (value) => value.toMap()),
      'progress': ?pulumi.Input.mapOptionalInputValue<BucketReplicationProgress, Map<String, dynamic>>(progress, (value) => value.toMap()),
      'rtc': ?pulumi.Input.mapOptionalInputValue<BucketReplicationRtc, Map<String, dynamic>>(rtc, (value) => value.toMap()),
      'ruleId': ?ruleId,
      'sourceSelectionCriteria': ?pulumi.Input.mapOptionalInputValue<BucketReplicationSourceSelectionCriteria, Map<String, dynamic>>(sourceSelectionCriteria, (value) => value.toMap()),
      'status': ?status,
      'syncRole': ?syncRole,
    };
  }

  factory BucketReplicationState.fromMap(Map<String, dynamic> map) {
    return BucketReplicationState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<BucketReplicationDestination>(BucketReplicationDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<BucketReplicationEncryptionConfiguration>(BucketReplicationEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      historicalObjectReplication: map['historicalObjectReplication'] == null ? null : pulumi.Output.create<String>(map['historicalObjectReplication'] as String),
      prefixSet: map['prefixSet'] == null ? null : pulumi.Output.create<BucketReplicationPrefixSet>(BucketReplicationPrefixSet.fromMap((map['prefixSet'] as Map).cast<String, dynamic>())),
      progress: map['progress'] == null ? null : pulumi.Output.create<BucketReplicationProgress>(BucketReplicationProgress.fromMap((map['progress'] as Map).cast<String, dynamic>())),
      rtc: map['rtc'] == null ? null : pulumi.Output.create<BucketReplicationRtc>(BucketReplicationRtc.fromMap((map['rtc'] as Map).cast<String, dynamic>())),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
      sourceSelectionCriteria: map['sourceSelectionCriteria'] == null ? null : pulumi.Output.create<BucketReplicationSourceSelectionCriteria>(BucketReplicationSourceSelectionCriteria.fromMap((map['sourceSelectionCriteria'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      syncRole: map['syncRole'] == null ? null : pulumi.Output.create<String>(map['syncRole'] as String),
    );
  }
}

