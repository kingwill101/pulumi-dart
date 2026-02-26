// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../topic_rule_timestream_dimension/topic_rule_timestream_dimension.dart';
import '../topic_rule_timestream_timestamp/topic_rule_timestream_timestamp.dart';

class TopicRuleTimestream {
  /// The name of an Amazon Timestream database.
  final String databaseName;

  /// Configuration blocks with metadata attributes of the time series that are written in each measure record. Nested arguments below.
  final List<TopicRuleTimestreamDimension> dimensions;

  /// The ARN of the role that grants permission to write to the Amazon Timestream database table.
  final String roleArn;

  /// The name of the database table into which to write the measure records.
  final String tableName;

  /// Configuration block specifying an application-defined value to replace the default value assigned to the Timestream record's timestamp in the time column. Nested arguments below.
  final TopicRuleTimestreamTimestamp? timestamp;

  TopicRuleTimestream({
    required this.databaseName,
    required this.dimensions,
    required this.roleArn,
    required this.tableName,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    map['dimensions'] =
        Input.encodeList<TopicRuleTimestreamDimension, Map<String, dynamic>>(
            dimensions, (value) => value.toMap());
    map['roleArn'] = roleArn;
    map['tableName'] = tableName;
    final timestampValue = timestamp;
    if (timestampValue != null) {
      map['timestamp'] = timestampValue.toMap();
    }
    return map;
  }

  factory TopicRuleTimestream.fromMap(Map<String, dynamic> map) {
    return TopicRuleTimestream(
      databaseName: map['databaseName'] as String,
      dimensions: Input.decodeList<TopicRuleTimestreamDimension>(
          map['dimensions'],
          (value) => TopicRuleTimestreamDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] as String,
      tableName: map['tableName'] as String,
      timestamp: map['timestamp'] == null
          ? null
          : TopicRuleTimestreamTimestamp.fromMap(
              (map['timestamp'] as Map).cast<String, dynamic>()),
    );
  }
}
