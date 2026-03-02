// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_timestream_dimension.dart';
import 'topic_rule_timestream_timestamp.dart';

class TopicRuleTimestream {
  /// The name of an Amazon Timestream database.
  final pulumi.Input<String> databaseName;
  /// Configuration blocks with metadata attributes of the time series that are written in each measure record. Nested arguments below.
  final pulumi.Input<List<TopicRuleTimestreamDimension>> dimensions;
  /// The ARN of the role that grants permission to write to the Amazon Timestream database table.
  final pulumi.Input<String> roleArn;
  /// The name of the database table into which to write the measure records.
  final pulumi.Input<String> tableName;
  /// Configuration block specifying an application-defined value to replace the default value assigned to the Timestream record's timestamp in the time column. Nested arguments below.
  final pulumi.Input<TopicRuleTimestreamTimestamp>? timestamp;

  /// Creates a new [TopicRuleTimestream].
  /// [databaseName] The name of an Amazon Timestream database.
  /// [dimensions] Configuration blocks with metadata attributes of the time series that are written in each measure record. Nested arguments below.
  /// [roleArn] The ARN of the role that grants permission to write to the Amazon Timestream database table.
  /// [tableName] The name of the database table into which to write the measure records.
  /// [timestamp] Configuration block specifying an application-defined value to replace the default value assigned to the Timestream record's timestamp in the time column. Nested arguments below.
  TopicRuleTimestream({
    required this.databaseName,
    required this.dimensions,
    required this.roleArn,
    required this.tableName,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'dimensions': pulumi.Input.mapInputValue<List<TopicRuleTimestreamDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<TopicRuleTimestreamDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleArn': roleArn,
      'tableName': tableName,
      'timestamp': ?pulumi.Input.mapOptionalInputValue<TopicRuleTimestreamTimestamp, Map<String, dynamic>>(timestamp, (value) => value.toMap()),
    };
  }

  factory TopicRuleTimestream.fromMap(Map<String, dynamic> map) {
    return TopicRuleTimestream(
      databaseName: (map['databaseName'] as String).input(),
      dimensions: (pulumi.Input.decodeList<TopicRuleTimestreamDimension>(map['dimensions']!, (value) => TopicRuleTimestreamDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roleArn: (map['roleArn'] as String).input(),
      tableName: (map['tableName'] as String).input(),
      timestamp: map['timestamp'] == null ? null : ((TopicRuleTimestreamTimestamp.fromMap((map['timestamp']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

