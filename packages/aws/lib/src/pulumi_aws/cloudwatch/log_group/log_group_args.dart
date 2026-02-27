// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogGroup.
class LogGroupArgs {
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

  LogGroupArgs({
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
    final map = <String, dynamic>{};
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final logGroupClassValue = logGroupClass;
    if (logGroupClassValue != null) {
      map['logGroupClass'] = logGroupClassValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionInDaysValue = retentionInDays;
    if (retentionInDaysValue != null) {
      map['retentionInDays'] = retentionInDaysValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LogGroupArgs.fromMap(Map<String, dynamic> map) {
    return LogGroupArgs(
      deletionProtectionEnabled:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      logGroupClass: pulumi.Input.asOptionalInput<String>(map['logGroupClass']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retentionInDays:
          pulumi.Input.asOptionalInput<int>(map['retentionInDays']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
