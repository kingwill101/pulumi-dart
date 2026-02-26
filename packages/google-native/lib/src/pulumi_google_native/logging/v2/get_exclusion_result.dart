// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExclusion.
class GetExclusionResult {
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

  GetExclusionResult({
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

  factory GetExclusionResult.fromMap(Map<String, dynamic> map) {
    return GetExclusionResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      filter: map['filter'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
