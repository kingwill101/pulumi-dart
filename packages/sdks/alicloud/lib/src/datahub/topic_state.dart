// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Topic resources.
class TopicState {
  /// Comment of the datahub topic. It cannot be longer than 255 characters.
  ///
  /// **Notes:** Currently `life_cycle` can not be modified and it will be supported in the next future.
  final pulumi.Input<String>? comment;
  /// Create time of the datahub topic. It is a human-readable string rather than 64-bits UTC.
  final pulumi.Input<String>? createTime;
  /// Last modify time of the datahub topic. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  final pulumi.Input<String>? lastModifyTime;
  /// How many days this topic lives. The permitted range of values is [1, 7]. The default value is 3.
  final pulumi.Input<int>? lifeCycle;
  /// The name of the datahub topic. Its length is limited to 1-128 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  final pulumi.Input<String>? name;
  /// The name of the datahub project that this topic belongs to. It is case-insensitive.
  final pulumi.Input<String>? projectName;
  /// Schema of this topic, required only for TUPLE topic. Supported data types (case-insensitive) are:
  /// - BIGINT
  /// - STRING
  /// - BOOLEAN
  /// - DOUBLE
  /// - TIMESTAMP
  final pulumi.Input<Map<String, String>>? recordSchema;
  /// The type of this topic. Its value must be one of {BLOB, TUPLE}. For BLOB topic, data will be organized as binary and encoded by BASE64. For TUPLE topic, data has fixed schema. The default value is "TUPLE" with a schema {STRING}.
  final pulumi.Input<String>? recordType;
  /// The number of shards this topic contains. The permitted range of values is [1, 10]. The default value is 1.
  final pulumi.Input<int>? shardCount;

  /// Creates a new [TopicState].
  /// [comment] Comment of the datahub topic. It cannot be longer than 255 characters.
  /// [createTime] Create time of the datahub topic. It is a human-readable string rather than 64-bits UTC.
  /// [lastModifyTime] Last modify time of the datahub topic. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  /// [lifeCycle] How many days this topic lives. The permitted range of values is [1, 7]. The default value is 3.
  /// [name] The name of the datahub topic. Its length is limited to 1-128 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  /// [projectName] The name of the datahub project that this topic belongs to. It is case-insensitive.
  /// [recordSchema] Schema of this topic, required only for TUPLE topic. Supported data types (case-insensitive) are:
  /// [recordType] The type of this topic. Its value must be one of {BLOB, TUPLE}. For BLOB topic, data will be organized as binary and encoded by BASE64. For TUPLE topic, data has fixed schema. The default value is "TUPLE" with a schema {STRING}.
  /// [shardCount] The number of shards this topic contains. The permitted range of values is [1, 10]. The default value is 1.
  const TopicState({
    this.comment,
    this.createTime,
    this.lastModifyTime,
    this.lifeCycle,
    this.name,
    this.projectName,
    this.recordSchema,
    this.recordType,
    this.shardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'createTime': ?createTime,
      'lastModifyTime': ?lastModifyTime,
      'lifeCycle': ?lifeCycle,
      'name': ?name,
      'projectName': ?projectName,
      'recordSchema': ?recordSchema,
      'recordType': ?recordType,
      'shardCount': ?shardCount,
    };
  }

  factory TopicState.fromMap(Map<String, dynamic> map) {
    return TopicState(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifyTime: (() { final guardedValue = map['lastModifyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifeCycle: (() { final guardedValue = map['lifeCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordSchema: (() { final guardedValue = map['recordSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      recordType: (() { final guardedValue = map['recordType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

