// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStateMachine.
class GetStateMachineResult {
  /// Set to the arn of the state function.
  final String? arn;
  /// Date the state machine was created.
  final String? creationDate;
  /// Set to the state machine definition.
  final String? definition;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// The revision identifier for the state machine.
  final String? revisionId;
  /// Set to the roleArn used by the state function.
  final String? roleArn;
  /// Set to the current status of the state machine.
  final String? status;

  /// Creates a new [GetStateMachineResult].
  /// [arn] Set to the arn of the state function.
  /// [creationDate] Date the state machine was created.
  /// [definition] Set to the state machine definition.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [revisionId] The revision identifier for the state machine.
  /// [roleArn] Set to the roleArn used by the state function.
  /// [status] Set to the current status of the state machine.
  const GetStateMachineResult({
    this.arn,
    this.creationDate,
    this.definition,
    this.description,
    this.id,
    this.name,
    this.region,
    this.revisionId,
    this.roleArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationDate': ?creationDate,
      'definition': ?definition,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'revisionId': ?revisionId,
      'roleArn': ?roleArn,
      'status': ?status,
    };
  }

  factory GetStateMachineResult.fromMap(Map<String, dynamic> map) {
    return GetStateMachineResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
