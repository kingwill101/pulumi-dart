// ignore_for_file: unused_element, unnecessary_cast

class ServiceActionDefinition {
  /// ARN of the role that performs the self-service actions on your behalf. For example, `arn:aws:iam::12345678910:role/ActionRole`. To reuse the provisioned product launch role, set to `LAUNCH_ROLE`.
  final String? assumeRole;

  /// Name of the SSM document. For example, `AWS-RestartEC2Instance`. If you are using a shared SSM document, you must provide the ARN instead of the name.
  final String name;

  /// List of parameters in JSON format. For example: `[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]` or `[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]`.
  final String? parameters;

  /// Service action definition type. Valid value is `SSM_AUTOMATION`. Default is `SSM_AUTOMATION`.
  final String? type;

  /// SSM document version. For example, `1`.
  final String version;

  ServiceActionDefinition({
    this.assumeRole,
    required this.name,
    this.parameters,
    this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assumeRoleValue = assumeRole;
    if (assumeRoleValue != null) {
      map['assumeRole'] = assumeRoleValue;
    }
    map['name'] = name;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    map['version'] = version;
    return map;
  }

  factory ServiceActionDefinition.fromMap(Map<String, dynamic> map) {
    return ServiceActionDefinition(
      assumeRole:
          map['assumeRole'] == null ? null : map['assumeRole'] as String,
      name: map['name'] as String,
      parameters:
          map['parameters'] == null ? null : map['parameters'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      version: map['version'] as String,
    );
  }
}
