// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceActionDefinition {
  /// ARN of the role that performs the self-service actions on your behalf. For example, `arn:aws:iam::12345678910:role/ActionRole`. To reuse the provisioned product launch role, set to `LAUNCH_ROLE`.
  final pulumi.Input<String>? assumeRole;
  /// Name of the SSM document. For example, `AWS-RestartEC2Instance`. If you are using a shared SSM document, you must provide the ARN instead of the name.
  final pulumi.Input<String> name;
  /// List of parameters in JSON format. For example: `[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]` or `[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]`.
  final pulumi.Input<String>? parameters;
  /// Service action definition type. Valid value is `SSM_AUTOMATION`. Default is `SSM_AUTOMATION`.
  final pulumi.Input<String>? type;
  /// SSM document version. For example, `1`.
  final pulumi.Input<String> version;

  /// Creates a new [ServiceActionDefinition].
  /// [assumeRole] ARN of the role that performs the self-service actions on your behalf. For example, `arn:aws:iam::12345678910:role/ActionRole`. To reuse the provisioned product launch role, set to `LAUNCH_ROLE`.
  /// [name] Name of the SSM document. For example, `AWS-RestartEC2Instance`. If you are using a shared SSM document, you must provide the ARN instead of the name.
  /// [parameters] List of parameters in JSON format. For example: `[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]` or `[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]`.
  /// [type] Service action definition type. Valid value is `SSM_AUTOMATION`. Default is `SSM_AUTOMATION`.
  /// [version] SSM document version. For example, `1`.
  ServiceActionDefinition({
    this.assumeRole,
    required this.name,
    this.parameters,
    this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assumeRole': ?assumeRole,
      'name': name,
      'parameters': ?parameters,
      'type': ?type,
      'version': version,
    };
  }

  factory ServiceActionDefinition.fromMap(Map<String, dynamic> map) {
    return ServiceActionDefinition(
      assumeRole: map['assumeRole'] == null ? null : (map['assumeRole'] as String).input(),
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

