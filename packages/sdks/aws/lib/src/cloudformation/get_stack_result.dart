// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStack.
class GetStackResult {
  /// List of capabilities
  final List<String> capabilities;
  /// Description of the stack
  final String description;
  /// Whether the rollback of the stack is disabled when stack creation fails
  final bool disableRollback;
  /// ARN of the IAM role used to create the stack.
  final String iamRoleArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// List of SNS topic ARNs to publish stack related events
  final List<String> notificationArns;
  /// Map of outputs from the stack.
  final Map<String, String> outputs;
  /// Map of parameters that specify input parameters for the stack.
  final Map<String, String> parameters;
  final String region;
  /// Map of tags associated with this stack.
  final Map<String, String> tags;
  /// Structure containing the template body.
  final String templateBody;
  /// Amount of time that can pass before the stack status becomes `CREATE_FAILED`
  final int timeoutInMinutes;

  /// Creates a new [GetStackResult].
  /// [capabilities] List of capabilities
  /// [description] Description of the stack
  /// [disableRollback] Whether the rollback of the stack is disabled when stack creation fails
  /// [iamRoleArn] ARN of the IAM role used to create the stack.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [notificationArns] List of SNS topic ARNs to publish stack related events
  /// [outputs] Map of outputs from the stack.
  /// [parameters] Map of parameters that specify input parameters for the stack.
  /// [region] Required.
  /// [tags] Map of tags associated with this stack.
  /// [templateBody] Structure containing the template body.
  /// [timeoutInMinutes] Amount of time that can pass before the stack status becomes `CREATE_FAILED`
  const GetStackResult({
    required this.capabilities,
    required this.description,
    required this.disableRollback,
    required this.iamRoleArn,
    required this.id,
    required this.name,
    required this.notificationArns,
    required this.outputs,
    required this.parameters,
    required this.region,
    required this.tags,
    required this.templateBody,
    required this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'description': description,
      'disableRollback': disableRollback,
      'iamRoleArn': iamRoleArn,
      'id': id,
      'name': name,
      'notificationArns': notificationArns,
      'outputs': outputs,
      'parameters': parameters,
      'region': region,
      'tags': tags,
      'templateBody': templateBody,
      'timeoutInMinutes': timeoutInMinutes,
    };
  }

  factory GetStackResult.fromMap(Map<String, dynamic> map) {
    return GetStackResult(
      capabilities: (map['capabilities'] as List).cast<String>(),
      description: map['description'] as String,
      disableRollback: map['disableRollback'] as bool,
      iamRoleArn: map['iamRoleArn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      notificationArns: (map['notificationArns'] as List).cast<String>(),
      outputs: (map['outputs'] as Map).cast<String, String>(),
      parameters: (map['parameters'] as Map).cast<String, String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      templateBody: map['templateBody'] as String,
      timeoutInMinutes: map['timeoutInMinutes'] as int,
    );
  }
}

