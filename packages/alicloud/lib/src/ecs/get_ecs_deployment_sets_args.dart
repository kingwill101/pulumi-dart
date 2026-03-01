// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_deployment_sets_get_ecs_deployment_sets_args_doc}
/// Arguments for getEcsDeploymentSets.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_deployment_sets_get_ecs_deployment_sets_args_doc}
class GetEcsDeploymentSetsArgs {
  /// The name of the deployment set.
  final pulumi.Input<String>? deploymentSetName;
  /// A list of Deployment Set IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Deployment Set name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The deployment strategy. Valid values: `Availability`.
  final pulumi.Input<String>? strategy;

  /// Creates a new [GetEcsDeploymentSetsArgs].
  /// [deploymentSetName] The name of the deployment set.
  /// [ids] A list of Deployment Set IDs.
  /// [nameRegex] A regex string to filter results by Deployment Set name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [strategy] The deployment strategy. Valid values: `Availability`.
  GetEcsDeploymentSetsArgs({
    String? deploymentSetName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? strategy,
  }) :
      deploymentSetName = pulumi.Input.asOptionalInput<String>(deploymentSetName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      strategy = pulumi.Input.asOptionalInput<String>(strategy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentSetName': ?deploymentSetName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'strategy': ?strategy,
    };
  }

  factory GetEcsDeploymentSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsDeploymentSetsArgs(
      deploymentSetName: map['deploymentSetName'] == null ? null : map['deploymentSetName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      strategy: map['strategy'] == null ? null : map['strategy'] as String,
    );
  }
}

