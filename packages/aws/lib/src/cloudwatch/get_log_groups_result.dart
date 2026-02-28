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

  /// Creates a new [GetLogGroupsResult].
  /// [arns] Set of ARNs of the Cloudwatch log groups
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logGroupNamePrefix] Optional.
  /// [logGroupNames] Set of names of the Cloudwatch log groups
  /// [region] Required.
  GetLogGroupsResult({
    required this.arns,
    required this.id,
    this.logGroupNamePrefix,
    required this.logGroupNames,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'id': id,
      'logGroupNamePrefix': ?logGroupNamePrefix,
      'logGroupNames': logGroupNames,
      'region': region,
    };
  }

  factory GetLogGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetLogGroupsResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      logGroupNamePrefix: map['logGroupNamePrefix'] == null ? null : map['logGroupNamePrefix'] as String,
      logGroupNames: (map['logGroupNames'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

