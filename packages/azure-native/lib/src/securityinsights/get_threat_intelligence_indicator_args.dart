// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_threat_intelligence_indicator_args_doc}
/// Arguments for getThreatIntelligenceIndicator.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_threat_intelligence_indicator_args_doc}
class GetThreatIntelligenceIndicatorArgs {
  /// Threat intelligence indicator name field.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetThreatIntelligenceIndicatorArgs].
  /// [name] Threat intelligence indicator name field.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetThreatIntelligenceIndicatorArgs({
    required String name,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetThreatIntelligenceIndicatorArgs.fromMap(Map<String, dynamic> map) {
    return GetThreatIntelligenceIndicatorArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

