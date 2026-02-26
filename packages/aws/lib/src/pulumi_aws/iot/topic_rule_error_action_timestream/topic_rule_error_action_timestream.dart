// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../topic_rule_error_action_timestream_dimension/topic_rule_error_action_timestream_dimension.dart';
import '../topic_rule_error_action_timestream_timestamp/topic_rule_error_action_timestream_timestamp.dart';

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

  TopicRuleErrorActionTimestream({
    required this.databaseName,
    required this.dimensions,
    required this.roleArn,
    required this.tableName,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    map['dimensions'] = Input.encodeList<
        TopicRuleErrorActionTimestreamDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['roleArn'] = roleArn;
    map['tableName'] = tableName;
    final timestampValue = timestamp;
    if (timestampValue != null) {
      map['timestamp'] = timestampValue.toMap();
    }
    return map;
  }

  factory TopicRuleErrorActionTimestream.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionTimestream(
      databaseName: map['databaseName'] as String,
      dimensions: Input.decodeList<TopicRuleErrorActionTimestreamDimension>(
          map['dimensions'],
          (value) => TopicRuleErrorActionTimestreamDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] as String,
      tableName: map['tableName'] as String,
      timestamp: map['timestamp'] == null
          ? null
          : TopicRuleErrorActionTimestreamTimestamp.fromMap(
              (map['timestamp'] as Map).cast<String, dynamic>()),
    );
  }
}
