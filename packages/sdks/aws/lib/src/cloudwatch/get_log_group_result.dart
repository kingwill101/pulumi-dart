// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogGroup.
class GetLogGroupResult {
  /// ARN of the Cloudwatch log group. Any `:*` suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix.
  final String arn;
  /// Creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
  final int creationTime;
  /// Boolean to indicate whether deletion protection is enabled.
  final bool deletionProtectionEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN of the KMS Key to use when encrypting log data.
  final String kmsKeyId;
  /// The log class of the log group.
  final String logGroupClass;
  final String name;
  final String region;
  /// Number of days log events retained in the specified log group.
  final int retentionInDays;
  /// Map of tags to assign to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetLogGroupResult].
  /// [arn] ARN of the Cloudwatch log group. Any `:*` suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix.
  /// [creationTime] Creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
  /// [deletionProtectionEnabled] Boolean to indicate whether deletion protection is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN of the KMS Key to use when encrypting log data.
  /// [logGroupClass] The log class of the log group.
  /// [name] Required.
  /// [region] Required.
  /// [retentionInDays] Number of days log events retained in the specified log group.
  /// [tags] Map of tags to assign to the resource.
  const GetLogGroupResult({
    required this.arn,
    required this.creationTime,
    required this.deletionProtectionEnabled,
    required this.id,
    required this.kmsKeyId,
    required this.logGroupClass,
    required this.name,
    required this.region,
    required this.retentionInDays,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'creationTime': creationTime,
      'deletionProtectionEnabled': deletionProtectionEnabled,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'logGroupClass': logGroupClass,
      'name': name,
      'region': region,
      'retentionInDays': retentionInDays,
      'tags': tags,
    };
  }

  factory GetLogGroupResult.fromMap(Map<String, dynamic> map) {
    return GetLogGroupResult(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as int,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      logGroupClass: map['logGroupClass'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      retentionInDays: map['retentionInDays'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

