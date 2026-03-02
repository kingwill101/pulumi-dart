// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the log group configuration for the CloudWatch Log Group to send logs to.
class LogGroup {
  /// The ARN of the KMS Key to use when encrypting log data.
  final pulumi.Input<String>? kmsKeyId;
  /// Creates a unique name beginning with the specified prefix
  final pulumi.Input<String>? namePrefix;
  /// Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire.
  final pulumi.Input<int>? retentionInDays;
  /// A map of tags to assign to the resource. If configured with provider defaultTags present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LogGroup].
  /// [kmsKeyId] The ARN of the KMS Key to use when encrypting log data.
  /// [namePrefix] Creates a unique name beginning with the specified prefix
  /// [retentionInDays] Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire.
  /// [tags] A map of tags to assign to the resource. If configured with provider defaultTags present, tags with matching keys will overwrite those defined at the provider-level.
  LogGroup({
    this.kmsKeyId,
    this.namePrefix,
    this.retentionInDays,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'namePrefix': ?namePrefix,
      'retentionInDays': ?retentionInDays,
      'tags': ?tags,
    };
  }

  factory LogGroup.fromMap(Map<String, dynamic> map) {
    return LogGroup(
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

