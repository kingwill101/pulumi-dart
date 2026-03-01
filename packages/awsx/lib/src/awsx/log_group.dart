// ignore_for_file: unused_element, unnecessary_cast

/// The set of arguments for constructing a LogGroup resource.
class LogGroup {
  /// Boolean to indicate whether deletion protection is enabled. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing this argument.
  final bool? deletionProtectionEnabled;

  /// The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group,
  /// AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires
  /// permissions for the CMK whenever the encrypted data is requested.
  final String? kmsKeyId;

  /// Specified the log class of the log group. Possible values are: `STANDARD`, `INFREQUENT_ACCESS`, or `DELIVERY`.
  final String? logGroupClass;

  /// The name of the log group. If omitted, this provider will assign a random, unique name.
  final String? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final String? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// Specifies the number of days
  /// you want to retain log events in the specified log group.  Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0.
  /// If you select 0, the events in the log group are always retained and never expire. If `log_group_class` is set to `DELIVERY`, this argument is ignored and `retention_in_days` is forcibly set to 2.
  final int? retentionInDays;

  /// Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the state.
  final bool? skipDestroy;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// Creates a new [LogGroup].
  /// [deletionProtectionEnabled] Boolean to indicate whether deletion protection is enabled. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing this argument.
  /// [kmsKeyId] The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group,
  /// [logGroupClass] Specified the log class of the log group. Possible values are: `STANDARD`, `INFREQUENT_ACCESS`, or `DELIVERY`.
  /// [name] The name of the log group. If omitted, this provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionInDays] Specifies the number of days
  /// [skipDestroy] Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the state.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LogGroup({
    this.deletionProtectionEnabled,
    this.kmsKeyId,
    this.logGroupClass,
    this.name,
    this.namePrefix,
    this.region,
    this.retentionInDays,
    this.skipDestroy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'kmsKeyId': ?kmsKeyId,
      'logGroupClass': ?logGroupClass,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'retentionInDays': ?retentionInDays,
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
    };
  }

  factory LogGroup.fromMap(Map<String, dynamic> map) {
    return LogGroup(
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null
          ? null
          : map['deletionProtectionEnabled'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      logGroupClass: map['logGroupClass'] == null
          ? null
          : map['logGroupClass'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      retentionInDays: map['retentionInDays'] == null
          ? null
          : map['retentionInDays'] as int,
      skipDestroy: map['skipDestroy'] == null
          ? null
          : map['skipDestroy'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
