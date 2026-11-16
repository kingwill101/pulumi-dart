// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_target_definition.dart';
import 'stream_timeouts.dart';

/// Input properties used for looking up and filtering Stream resources.
class StreamState {
  /// ARN of the retrieved stream.
  final pulumi.Input<String?>? arn;
  /// ID of the cluster for which to create the stream.
  final pulumi.Input<String?>? clusterIdentifier;
  /// Time when the stream was created.
  final pulumi.Input<String?>? creationTime;
  /// Format of the stream records. Valid values: `JSON`.
  final pulumi.Input<String?>? format;
  /// Ordering mode for the stream. Determines how change events are ordered when delivered to the target. Valid values: `UNORDERED`.
  final pulumi.Input<String?>? ordering;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Current status of the retrieved stream. Valid values: `CREATING`, `ACTIVE`, `DELETING`, `DELETED`, `FAILED`, `IMPAIRED`.
  final pulumi.Input<String?>? status;
  /// ID of the retrieved stream.
  final pulumi.Input<String?>? streamIdentifier;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Target destination configuration for the stream. Contains Kinesis stream configuration including stream ARN and IAM role ARN. See `targetDefinition` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<StreamTargetDefinition?>? targetDefinition;
  final pulumi.Input<StreamTimeouts?>? timeouts;

  /// Creates a new [StreamState].
  /// [arn] ARN of the retrieved stream.
  /// [clusterIdentifier] ID of the cluster for which to create the stream.
  /// [creationTime] Time when the stream was created.
  /// [format] Format of the stream records. Valid values: `JSON`.
  /// [ordering] Ordering mode for the stream. Determines how change events are ordered when delivered to the target. Valid values: `UNORDERED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current status of the retrieved stream. Valid values: `CREATING`, `ACTIVE`, `DELETING`, `DELETED`, `FAILED`, `IMPAIRED`.
  /// [streamIdentifier] ID of the retrieved stream.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetDefinition] Target destination configuration for the stream. Contains Kinesis stream configuration including stream ARN and IAM role ARN. See `targetDefinition` Block below.
  /// [timeouts] Optional.
  const StreamState({
    this.arn,
    this.clusterIdentifier,
    this.creationTime,
    this.format,
    this.ordering,
    this.region,
    this.status,
    this.streamIdentifier,
    this.tags,
    this.tagsAll,
    this.targetDefinition,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterIdentifier': ?clusterIdentifier,
      'creationTime': ?creationTime,
      'format': ?format,
      'ordering': ?ordering,
      'region': ?region,
      'status': ?status,
      'streamIdentifier': ?streamIdentifier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetDefinition': ?pulumi.Input.mapOptionalInputValue<StreamTargetDefinition, Map<String, dynamic>>(targetDefinition, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<StreamTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory StreamState.fromMap(Map<String, dynamic> map) {
    return StreamState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ordering: (() { final guardedValue = map['ordering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamIdentifier: (() { final guardedValue = map['streamIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDefinition: (() { final guardedValue = map['targetDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamTargetDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
