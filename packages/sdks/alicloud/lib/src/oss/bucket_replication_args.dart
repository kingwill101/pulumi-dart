// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_destination.dart';
import 'bucket_replication_encryption_configuration.dart';
import 'bucket_replication_prefix_set.dart';
import 'bucket_replication_progress.dart';
import 'bucket_replication_rtc.dart';
import 'bucket_replication_source_selection_criteria.dart';

/// {@template pulumi_oss_bucket_replication_bucket_replication_args_doc}
/// The set of arguments for BucketReplication.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_replication_bucket_replication_args_doc}
class BucketReplicationArgs {
  /// The operations that can be synchronized to the destination bucket. You can set action to one or more of the following operation types. Valid values: `ALL`(contains PUT, DELETE, and ABORT), `PUT`, `DELETE` and `ABORT`. Defaults to `ALL`.
  final pulumi.Input<String>? action;
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// Specifies the destination for the rule. See `destination` below.
  final pulumi.Input<BucketReplicationDestination> destination;
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
  /// Specifies other conditions used to filter the source objects to replicate. See `source_selection_criteria` below.
  final pulumi.Input<BucketReplicationSourceSelectionCriteria>? sourceSelectionCriteria;
  /// Specifies the role that you authorize OSS to use to replicate data. If SSE-KMS is specified to encrypt the objects replicated to the destination bucket, it must be specified.
  final pulumi.Input<String>? syncRole;

  /// Creates a new [BucketReplicationArgs].
  /// [action] The operations that can be synchronized to the destination bucket. You can set action to one or more of the following operation types. Valid values: `ALL`(contains PUT, DELETE, and ABORT), `PUT`, `DELETE` and `ABORT`. Defaults to `ALL`.
  /// [bucket] The name of the bucket.
  /// [destination] Specifies the destination for the rule. See `destination` below.
  /// [encryptionConfiguration] Specifies the encryption configuration for the objects replicated to the destination bucket. See `encryption_configuration` below.
  /// [historicalObjectReplication] Specifies whether to replicate historical data from the source bucket to the destination bucket before data replication is enabled. Can be `enabled` or `disabled`. Defaults to `enabled`.
  /// [prefixSet] The prefixes used to specify the object to replicate. Only objects that match the prefix are replicated to the destination bucket. See `prefix_set` below.
  /// [progress] Specifies the progress for querying the progress of a data replication task of a bucket.
  /// [rtc] Configures the Replication Time Control (RTC) feature for a data replication task of a bucket. See `rtc` below.
  /// [sourceSelectionCriteria] Specifies other conditions used to filter the source objects to replicate. See `source_selection_criteria` below.
  /// [syncRole] Specifies the role that you authorize OSS to use to replicate data. If SSE-KMS is specified to encrypt the objects replicated to the destination bucket, it must be specified.
  const BucketReplicationArgs({
    this.action,
    required this.bucket,
    required this.destination,
    this.encryptionConfiguration,
    this.historicalObjectReplication,
    this.prefixSet,
    this.progress,
    this.rtc,
    this.sourceSelectionCriteria,
    this.syncRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'bucket': bucket,
      'destination': pulumi.Input.mapInputValue<BucketReplicationDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketReplicationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'historicalObjectReplication': ?historicalObjectReplication,
      'prefixSet': ?pulumi.Input.mapOptionalInputValue<BucketReplicationPrefixSet, Map<String, dynamic>>(prefixSet, (value) => value.toMap()),
      'progress': ?pulumi.Input.mapOptionalInputValue<BucketReplicationProgress, Map<String, dynamic>>(progress, (value) => value.toMap()),
      'rtc': ?pulumi.Input.mapOptionalInputValue<BucketReplicationRtc, Map<String, dynamic>>(rtc, (value) => value.toMap()),
      'sourceSelectionCriteria': ?pulumi.Input.mapOptionalInputValue<BucketReplicationSourceSelectionCriteria, Map<String, dynamic>>(sourceSelectionCriteria, (value) => value.toMap()),
      'syncRole': ?syncRole,
    };
  }

  factory BucketReplicationArgs.fromMap(Map<String, dynamic> map) {
    return BucketReplicationArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      destination: pulumi.Input.fromValue(BucketReplicationDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      historicalObjectReplication: (() { final guardedValue = map['historicalObjectReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixSet: (() { final guardedValue = map['prefixSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationPrefixSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      progress: (() { final guardedValue = map['progress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationProgress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rtc: (() { final guardedValue = map['rtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationRtc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceSelectionCriteria: (() { final guardedValue = map['sourceSelectionCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationSourceSelectionCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      syncRole: (() { final guardedValue = map['syncRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

