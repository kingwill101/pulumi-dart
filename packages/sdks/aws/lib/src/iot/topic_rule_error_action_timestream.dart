// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_error_action_timestream_dimension.dart';
import 'topic_rule_error_action_timestream_timestamp.dart';

class TopicRuleErrorActionTimestream {
  /// The name of an Amazon Timestream database.
  final pulumi.Input<String> databaseName;
  /// Configuration blocks with metadata attributes of the time series that are written in each measure record. Nested arguments below.
  final pulumi.Input<List<TopicRuleErrorActionTimestreamDimension>> dimensions;
  /// The ARN of the role that grants permission to write to the Amazon Timestream database table.
  final pulumi.Input<String> roleArn;
  /// The name of the database table into which to write the measure records.
  final pulumi.Input<String> tableName;
  /// Configuration block specifying an application-defined value to replace the default value assigned to the Timestream record's timestamp in the time column. Nested arguments below.
  final pulumi.Input<TopicRuleErrorActionTimestreamTimestamp>? timestamp;

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
      'dimensions': pulumi.Input.mapInputValue<List<TopicRuleErrorActionTimestreamDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<TopicRuleErrorActionTimestreamDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleArn': roleArn,
      'tableName': tableName,
      'timestamp': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionTimestreamTimestamp, Map<String, dynamic>>(timestamp, (value) => value.toMap()),
    };
  }

  factory TopicRuleErrorActionTimestream.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionTimestream(
      databaseName: (map['databaseName'] as String).input(),
      dimensions: (pulumi.Input.decodeList<TopicRuleErrorActionTimestreamDimension>(map['dimensions'], (value) => TopicRuleErrorActionTimestreamDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roleArn: (map['roleArn'] as String).input(),
      tableName: (map['tableName'] as String).input(),
      timestamp: map['timestamp'] == null ? null : (TopicRuleErrorActionTimestreamTimestamp.fromMap((map['timestamp'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

