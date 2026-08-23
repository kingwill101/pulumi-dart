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

  /// Creates a new [GetQuicksightGroupResult].
  /// [arn] The Amazon Resource Name (ARN) for the group.
  /// [awsAccountId] Required.
  /// [description] The group description.
  /// [groupName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namespace] Optional.
  /// [principalId] The principal ID of the group.
  /// [region] Required.
  const GetQuicksightGroupResult({
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
    return <String, dynamic>{
      'arn': arn,
      'awsAccountId': awsAccountId,
      'description': description,
      'groupName': groupName,
      'id': id,
      'namespace': ?namespace,
      'principalId': principalId,
      'region': region,
    };
  }

  factory GetQuicksightGroupResult.fromMap(Map<String, dynamic> map) {
    return GetQuicksightGroupResult(
      arn: map['arn'] as String,
      awsAccountId: map['awsAccountId'] as String,
      description: map['description'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: map['principalId'] as String,
      region: map['region'] as String,
    );
  }
}
