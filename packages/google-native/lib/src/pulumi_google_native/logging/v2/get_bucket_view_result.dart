// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBucketView.
class GetBucketViewResult {
  /// The creation timestamp of the view.
  final String createTime;

  /// Describes this view.
  final String description;

  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final String filter;

  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  final String name;

  /// The last update timestamp of the view.
  final String updateTime;

  GetBucketViewResult({
    required this.createTime,
    required this.description,
    required this.filter,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['filter'] = filter;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetBucketViewResult.fromMap(Map<String, dynamic> map) {
    return GetBucketViewResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      filter: map['filter'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
