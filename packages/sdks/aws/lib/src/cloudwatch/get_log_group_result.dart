// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogGroup.
class GetLogGroupResult {
  /// ARN of the Cloudwatch log group. Any `:*` suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix.
  final String? arn;
  /// Creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
  final int? creationTime;
  /// Boolean to indicate whether deletion protection is enabled.
  final bool? deletionProtectionEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN of the KMS Key to use when encrypting log data.
  final String? kmsKeyId;
  /// The log class of the log group.
  final String? logGroupClass;
  final String? name;
  final String? region;
  /// Number of days log events retained in the specified log group.
  final int? retentionInDays;
  /// Map of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetLogGroupResult].
  /// [arn] ARN of the Cloudwatch log group. Any `:*` suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix.
  /// [creationTime] Creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
  /// [deletionProtectionEnabled] Boolean to indicate whether deletion protection is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN of the KMS Key to use when encrypting log data.
  /// [logGroupClass] The log class of the log group.
  /// [name] Optional.
  /// [region] Optional.
  /// [retentionInDays] Number of days log events retained in the specified log group.
  /// [tags] Map of tags to assign to the resource.
  const GetLogGroupResult({
    this.arn,
    this.creationTime,
    this.deletionProtectionEnabled,
    this.id,
    this.kmsKeyId,
    this.logGroupClass,
    this.name,
    this.region,
    this.retentionInDays,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'logGroupClass': ?logGroupClass,
      'name': ?name,
      'region': ?region,
      'retentionInDays': ?retentionInDays,
      'tags': ?tags,
    };
  }

  factory GetLogGroupResult.fromMap(Map<String, dynamic> map) {
    return GetLogGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logGroupClass: (() { final guardedValue = map['logGroupClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
