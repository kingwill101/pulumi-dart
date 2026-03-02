// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chatbot_get_agents_get_agents_args_doc}
/// Arguments for getAgents.
/// {@endtemplate}
/// {@macro pulumi_chatbot_get_agents_get_agents_args_doc}
class GetAgentsArgs {
  /// The name of the agent.
  final pulumi.Input<String>? agentName;
  /// A regex string to filter resulting chatbot agents by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetAgentsArgs].
  /// [agentName] The name of the agent.
  /// [nameRegex] A regex string to filter resulting chatbot agents by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetAgentsArgs({
    this.agentName,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': ?agentName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetAgentsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentsArgs(
      agentName: map['agentName'] == null ? null : (map['agentName']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

