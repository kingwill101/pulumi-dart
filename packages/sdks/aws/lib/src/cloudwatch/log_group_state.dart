// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogGroup resources.
class LogGroupState {
  /// The Amazon Resource Name (ARN) specifying the log group. Any `:*` suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix.
  final pulumi.Input<String>? arn;
  /// Boolean to indicate whether deletion protection is enabled. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing this argument.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group,
  /// AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires
  /// permissions for the CMK whenever the encrypted data is requested.
  final pulumi.Input<String>? kmsKeyId;
  /// Specified the log class of the log group. Possible values are: `STANDARD`, `INFREQUENT_ACCESS`, or `DELIVERY`.
  final pulumi.Input<String>? logGroupClass;
  /// The name of the log group. If omitted, this provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the number of days
  /// you want to retain log events in the specified log group.  Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0.
  /// If you select 0, the events in the log group are always retained and never expire. If `log_group_class` is set to `DELIVERY`, this argument is ignored and `retention_in_days` is forcibly set to 2.
  final pulumi.Input<int>? retentionInDays;
  /// Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the state.
  final pulumi.Input<bool>? skipDestroy;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LogGroupState].
  /// [arn] The Amazon Resource Name (ARN) specifying the log group. Any `:*` suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix.
  /// [deletionProtectionEnabled] Boolean to indicate whether deletion protection is enabled. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing this argument.
  /// [kmsKeyId] The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group,
  /// [logGroupClass] Specified the log class of the log group. Possible values are: `STANDARD`, `INFREQUENT_ACCESS`, or `DELIVERY`.
  /// [name] The name of the log group. If omitted, this provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionInDays] Specifies the number of days
  /// [skipDestroy] Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the state.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LogGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? deletionProtectionEnabled,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? logGroupClass,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<int>? retentionInDays,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deletionProtectionEnabled = pulumi.Input.asOptionalInput<bool>(deletionProtectionEnabled),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      logGroupClass = pulumi.Input.asOptionalInput<String>(logGroupClass),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'kmsKeyId': ?kmsKeyId,
      'logGroupClass': ?logGroupClass,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'retentionInDays': ?retentionInDays,
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LogGroupState.fromMap(Map<String, dynamic> map) {
    return LogGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['deletionProtectionEnabled'] as bool),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      logGroupClass: map['logGroupClass'] == null ? null : pulumi.Output.create<String>(map['logGroupClass'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionInDays: map['retentionInDays'] == null ? null : pulumi.Output.create<int>(map['retentionInDays'] as int),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

