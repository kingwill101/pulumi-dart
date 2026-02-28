// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getStateMachine.
class GetStateMachineResult {
  /// Set to the arn of the state function.
  final String arn;

  /// Date the state machine was created.
  final String creationDate;

  /// Set to the state machine definition.
  final String definition;
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// The revision identifier for the state machine.
  final String revisionId;

  /// Set to the role_arn used by the state function.
  final String roleArn;

  /// Set to the current status of the state machine.
  final String status;

  /// Creates a new [GetStateMachineResult].
  /// [arn] Set to the arn of the state function.
  /// [creationDate] Date the state machine was created.
  /// [definition] Set to the state machine definition.
  /// [description] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [revisionId] The revision identifier for the state machine.
  /// [roleArn] Set to the role_arn used by the state function.
  /// [status] Set to the current status of the state machine.
  GetStateMachineResult({
    required this.arn,
    required this.creationDate,
    required this.definition,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.revisionId,
    required this.roleArn,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['creationDate'] = creationDate;
    map['definition'] = definition;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['revisionId'] = revisionId;
    map['roleArn'] = roleArn;
    map['status'] = status;
    return map;
  }

  factory GetStateMachineResult.fromMap(Map<String, dynamic> map) {
    return GetStateMachineResult(
      arn: map['arn'] as String,
      creationDate: map['creationDate'] as String,
      definition: map['definition'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      revisionId: map['revisionId'] as String,
      roleArn: map['roleArn'] as String,
      status: map['status'] as String,
    );
  }
}
