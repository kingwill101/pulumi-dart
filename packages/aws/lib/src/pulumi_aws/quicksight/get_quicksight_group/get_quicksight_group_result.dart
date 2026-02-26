// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getQuicksightGroup.
class GetQuicksightGroupResult {
  /// The Amazon Resource Name (ARN) for the group.
  final String arn;
  final String awsAccountId;

  /// The group description.
  final String description;
  final String groupName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? namespace;

  /// The principal ID of the group.
  final String principalId;
  final String region;

  GetQuicksightGroupResult({
    required this.arn,
    required this.awsAccountId,
    required this.description,
    required this.groupName,
    required this.id,
    this.namespace,
    required this.principalId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['awsAccountId'] = awsAccountId;
    map['description'] = description;
    map['groupName'] = groupName;
    map['id'] = id;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    map['principalId'] = principalId;
    map['region'] = region;
    return map;
  }

  factory GetQuicksightGroupResult.fromMap(Map<String, dynamic> map) {
    return GetQuicksightGroupResult(
      arn: map['arn'] as String,
      awsAccountId: map['awsAccountId'] as String,
      description: map['description'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      principalId: map['principalId'] as String,
      region: map['region'] as String,
    );
  }
}
