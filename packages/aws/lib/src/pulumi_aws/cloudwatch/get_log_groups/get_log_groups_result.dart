// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLogGroups.
class GetLogGroupsResult {
  /// Set of ARNs of the Cloudwatch log groups
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? logGroupNamePrefix;

  /// Set of names of the Cloudwatch log groups
  final List<String> logGroupNames;
  final String region;

  GetLogGroupsResult({
    required this.arns,
    required this.id,
    this.logGroupNamePrefix,
    required this.logGroupNames,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    map['id'] = id;
    final logGroupNamePrefixValue = logGroupNamePrefix;
    if (logGroupNamePrefixValue != null) {
      map['logGroupNamePrefix'] = logGroupNamePrefixValue;
    }
    map['logGroupNames'] = logGroupNames;
    map['region'] = region;
    return map;
  }

  factory GetLogGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetLogGroupsResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      logGroupNamePrefix: map['logGroupNamePrefix'] == null
          ? null
          : map['logGroupNamePrefix'] as String,
      logGroupNames: (map['logGroupNames'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
