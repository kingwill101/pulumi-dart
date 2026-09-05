// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQuicksightGroup.
class GetQuicksightGroupResult {
  /// ARN for the group.
  final String? arn;
  final String? awsAccountId;
  /// The group description.
  final String? description;
  final String? groupName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? namespace;
  /// The principal ID of the group.
  final String? principalId;
  final String? region;

  /// Creates a new [GetQuicksightGroupResult].
  /// [arn] ARN for the group.
  /// [awsAccountId] Optional.
  /// [description] The group description.
  /// [groupName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namespace] Optional.
  /// [principalId] The principal ID of the group.
  /// [region] Optional.
  const GetQuicksightGroupResult({
    this.arn,
    this.awsAccountId,
    this.description,
    this.groupName,
    this.id,
    this.namespace,
    this.principalId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'description': ?description,
      'groupName': ?groupName,
      'id': ?id,
      'namespace': ?namespace,
      'principalId': ?principalId,
      'region': ?region,
    };
  }

  factory GetQuicksightGroupResult.fromMap(Map<String, dynamic> map) {
    return GetQuicksightGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
