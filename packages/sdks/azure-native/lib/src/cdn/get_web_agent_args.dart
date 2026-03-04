// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_web_agent_args_doc}
/// Arguments for getWebAgent.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_web_agent_args_doc}
class GetWebAgentArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the web agent.
  final pulumi.Input<String> webAgentName;

  /// Creates a new [GetWebAgentArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [webAgentName] The name of the web agent.
  GetWebAgentArgs({
    required this.resourceGroupName,
    required this.webAgentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'webAgentName': webAgentName,
    };
  }

  factory GetWebAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAgentArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      webAgentName: pulumi.Input.fromValue(map['webAgentName'] as String),
    );
  }
}
