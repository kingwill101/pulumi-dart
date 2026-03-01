// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fnf_flow_flow_args_doc}
/// The set of arguments for Flow.
/// {@endtemplate}
/// {@macro pulumi_fnf_flow_flow_args_doc}
class FlowArgs {
  /// The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax.
  final pulumi.Input<String> definition;
  /// The description of the flow.
  final pulumi.Input<String> description;
  /// The name of the flow. The name must be unique in an Alibaba Cloud account.
  final pulumi.Input<String>? name;
  /// The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow.
  final pulumi.Input<String>? roleArn;
  /// The type of the flow. Valid values are `FDL` or `DEFAULT`.
  final pulumi.Input<String> type;

  /// Creates a new [FlowArgs].
  /// [definition] The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax.
  /// [description] The description of the flow.
  /// [name] The name of the flow. The name must be unique in an Alibaba Cloud account.
  /// [roleArn] The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow.
  /// [type] The type of the flow. Valid values are `FDL` or `DEFAULT`.
  FlowArgs({
    required String definition,
    required String description,
    String? name,
    String? roleArn,
    required String type,
  }) :
      definition = pulumi.Input.asInput<String>(definition),
      description = pulumi.Input.asInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'description': description,
      'name': ?name,
      'roleArn': ?roleArn,
      'type': type,
    };
  }

  factory FlowArgs.fromMap(Map<String, dynamic> map) {
    return FlowArgs(
      definition: map['definition'] as String,
      description: map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      type: map['type'] as String,
    );
  }
}

