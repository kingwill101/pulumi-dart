// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_target_definition.dart';
import 'stream_timeouts.dart';

/// {@template pulumi_dsql_stream_stream_args_doc}
/// The set of arguments for Stream.
/// {@endtemplate}
/// {@macro pulumi_dsql_stream_stream_args_doc}
class StreamArgs {
  /// ID of the cluster for which to create the stream.
  final pulumi.Input<String> clusterIdentifier;
  /// Format of the stream records. Valid values: `JSON`.
  final pulumi.Input<String> format;
  /// Ordering mode for the stream. Determines how change events are ordered when delivered to the target. Valid values: `UNORDERED`.
  final pulumi.Input<String> ordering;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Target destination configuration for the stream. Contains Kinesis stream configuration including stream ARN and IAM role ARN. See `targetDefinition` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<StreamTargetDefinition> targetDefinition;
  final pulumi.Input<StreamTimeouts?>? timeouts;

  /// Creates a new [StreamArgs].
  /// [clusterIdentifier] ID of the cluster for which to create the stream.
  /// [format] Format of the stream records. Valid values: `JSON`.
  /// [ordering] Ordering mode for the stream. Determines how change events are ordered when delivered to the target. Valid values: `UNORDERED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetDefinition] Target destination configuration for the stream. Contains Kinesis stream configuration including stream ARN and IAM role ARN. See `targetDefinition` Block below.
  /// [timeouts] Optional.
  const StreamArgs({
    required this.clusterIdentifier,
    required this.format,
    required this.ordering,
    this.region,
    this.tags,
    required this.targetDefinition,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
      'format': format,
      'ordering': ordering,
      'region': ?region,
      'tags': ?tags,
      'targetDefinition': pulumi.Input.mapInputValue<StreamTargetDefinition, Map<String, dynamic>>(targetDefinition, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<StreamTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      clusterIdentifier: pulumi.Input.fromValue(map['clusterIdentifier'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
      ordering: pulumi.Input.fromValue(map['ordering'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDefinition: pulumi.Input.fromValue(StreamTargetDefinition.fromMap((map['targetDefinition']! as Map).cast<String, dynamic>())),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
