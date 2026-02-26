// ignore_for_file: unused_element, unnecessary_cast

/// Defines the log group configuration for the CloudWatch Log Group to send logs to.
class LogGroup2 {
  /// The ARN of the KMS Key to use when encrypting log data.
  final String? kmsKeyId;

  /// Creates a unique name beginning with the specified prefix
  final String? namePrefix;

  /// Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire.
  final int? retentionInDays;

  /// A map of tags to assign to the resource. If configured with provider defaultTags present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  LogGroup2({
    this.kmsKeyId,
    this.namePrefix,
    this.retentionInDays,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final retentionInDaysValue = retentionInDays;
    if (retentionInDaysValue != null) {
      map['retentionInDays'] = retentionInDaysValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LogGroup2.fromMap(Map<String, dynamic> map) {
    return LogGroup2(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      retentionInDays:
          map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
