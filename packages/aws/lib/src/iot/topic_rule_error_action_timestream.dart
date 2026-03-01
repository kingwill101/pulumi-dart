// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_error_action_timestream_dimension.dart';
import 'topic_rule_error_action_timestream_timestamp.dart';

class TopicRuleErrorActionTimestream {
  /// The name of an Amazon Timestream database.
  final String databaseName;

  /// Configuration blocks with metadata attributes of the time series that are written in each measure record. Nested arguments below.
  final List<TopicRuleErrorActionTimestreamDimension> dimensions;

  /// The ARN of the role that grants permission to write to the Amazon Timestream database table.
  final String roleArn;

  /// The name of the database table into which to write the measure records.
  final String tableName;

  /// Configuration block specifying an application-defined value to replace the default value assigned to the Timestream record's timestamp in the time column. Nested arguments below.
  final TopicRuleErrorActionTimestreamTimestamp? timestamp;

  /// Creates a new [TopicRuleErrorActionTimestream].
  /// [databaseName] The name of an Amazon Timestream database.
  /// [dimensions] Configuration blocks with metadata attributes of the time series that are written in each measure record. Nested arguments below.
  /// [roleArn] The ARN of the role that grants permission to write to the Amazon Timestream database table.
  /// [tableName] The name of the database table into which to write the measure records.
  /// [timestamp] Configuration block specifying an application-defined value to replace the default value assigned to the Timestream record's timestamp in the time column. Nested arguments below.
  TopicRuleErrorActionTimestream({
    required this.databaseName,
    required this.dimensions,
    required this.roleArn,
    required this.tableName,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'dimensions':
          pulumi.Input.encodeList<
            TopicRuleErrorActionTimestreamDimension,
            Map<String, dynamic>
          >(dimensions, (value) => value.toMap()),
      'roleArn': roleArn,
      'tableName': tableName,
      'timestamp': ?timestamp == null ? null : timestamp!.toMap(),
    };
  }

  factory TopicRuleErrorActionTimestream.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionTimestream(
      databaseName: map['databaseName'] as String,
      dimensions:
          pulumi.Input.decodeList<TopicRuleErrorActionTimestreamDimension>(
            map['dimensions'],
            (value) => TopicRuleErrorActionTimestreamDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      roleArn: map['roleArn'] as String,
      tableName: map['tableName'] as String,
      timestamp: map['timestamp'] == null
          ? null
          : TopicRuleErrorActionTimestreamTimestamp.fromMap(
              (map['timestamp'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
