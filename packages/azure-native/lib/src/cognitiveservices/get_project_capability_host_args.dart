// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_project_capability_host_args_doc}
/// Arguments for getProjectCapabilityHost.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_project_capability_host_args_doc}
class GetProjectCapabilityHostArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the capability host associated with the Cognitive Services Resource
  final pulumi.Input<String> capabilityHostName;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectCapabilityHostArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [capabilityHostName] The name of the capability host associated with the Cognitive Services Resource
  /// [projectName] The name of Cognitive Services account's project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProjectCapabilityHostArgs({
    required String accountName,
    required String capabilityHostName,
    required String projectName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      capabilityHostName = pulumi.Input.asInput<String>(capabilityHostName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'capabilityHostName': capabilityHostName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectCapabilityHostArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectCapabilityHostArgs(
      accountName: map['accountName'] as String,
      capabilityHostName: map['capabilityHostName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

