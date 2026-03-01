// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_agent_application_args_doc}
/// Arguments for getAgentApplication.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_agent_application_args_doc}
class GetAgentApplicationArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Name for the Agent Application.
  final pulumi.Input<String> name;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgentApplicationArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [name] Name for the Agent Application.
  /// [projectName] The name of Cognitive Services account's project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAgentApplicationArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgentApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentApplicationArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

