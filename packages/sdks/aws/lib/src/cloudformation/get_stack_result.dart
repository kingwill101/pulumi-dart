// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStack.
class GetStackResult {
  /// List of capabilities
  final List<String>? capabilities;
  /// Description of the stack
  final String? description;
  /// Whether the rollback of the stack is disabled when stack creation fails
  final bool? disableRollback;
  /// ARN of the IAM role used to create the stack.
  final String? iamRoleArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// List of SNS topic ARNs to publish stack related events
  final List<String>? notificationArns;
  /// Map of outputs from the stack.
  final Map<String, String>? outputs;
  /// Map of parameters that specify input parameters for the stack.
  final Map<String, String>? parameters;
  final String? region;
  /// Map of tags associated with this stack.
  final Map<String, String>? tags;
  /// Structure containing the template body.
  final String? templateBody;
  /// Amount of time that can pass before the stack status becomes `CREATE_FAILED`
  final int? timeoutInMinutes;

  /// Creates a new [GetStackResult].
  /// [capabilities] List of capabilities
  /// [description] Description of the stack
  /// [disableRollback] Whether the rollback of the stack is disabled when stack creation fails
  /// [iamRoleArn] ARN of the IAM role used to create the stack.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [notificationArns] List of SNS topic ARNs to publish stack related events
  /// [outputs] Map of outputs from the stack.
  /// [parameters] Map of parameters that specify input parameters for the stack.
  /// [region] Optional.
  /// [tags] Map of tags associated with this stack.
  /// [templateBody] Structure containing the template body.
  /// [timeoutInMinutes] Amount of time that can pass before the stack status becomes `CREATE_FAILED`
  const GetStackResult({
    this.capabilities,
    this.description,
    this.disableRollback,
    this.iamRoleArn,
    this.id,
    this.name,
    this.notificationArns,
    this.outputs,
    this.parameters,
    this.region,
    this.tags,
    this.templateBody,
    this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'description': ?description,
      'disableRollback': ?disableRollback,
      'iamRoleArn': ?iamRoleArn,
      'id': ?id,
      'name': ?name,
      'notificationArns': ?notificationArns,
      'outputs': ?outputs,
      'parameters': ?parameters,
      'region': ?region,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory GetStackResult.fromMap(Map<String, dynamic> map) {
    return GetStackResult(
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableRollback: (() { final guardedValue = map['disableRollback']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationArns: (() { final guardedValue = map['notificationArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templateBody: (() { final guardedValue = map['templateBody']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeoutInMinutes: (() { final guardedValue = map['timeoutInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
