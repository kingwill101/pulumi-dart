// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a set of log entries that are filtered out by a sink. If your Google Cloud resource receives a large volume of log entries, you can use exclusions to reduce your chargeable logs. Note that exclusions on organization-level and folder-level sinks don't apply to child resources. Note also that you cannot modify the _Required sink or exclude logs from it.
class LogExclusionResponse {
  /// The creation timestamp of the exclusion.This field may not be present for older exclusions.
  final String createTime;

  /// Optional. A description of this exclusion.
  final String description;

  /// Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  final bool disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)
  final String filter;

  /// A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  final String name;

  /// The last update timestamp of the exclusion.This field may not be present for older exclusions.
  final String updateTime;

  /// Creates a new [LogExclusionResponse].
  /// [createTime] The creation timestamp of the exclusion.This field may not be present for older exclusions.
  /// [description] Optional. A description of this exclusion.
  /// [disabled] Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  /// [filter] An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)
  /// [name] A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  /// [updateTime] The last update timestamp of the exclusion.This field may not be present for older exclusions.
  LogExclusionResponse({
    required this.createTime,
    required this.description,
    required this.disabled,
    required this.filter,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['disabled'] = disabled;
    map['filter'] = filter;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory LogExclusionResponse.fromMap(Map<String, dynamic> map) {
    return LogExclusionResponse(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      filter: map['filter'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
