// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_deploy_group_deploy_group_args_doc}
/// The set of arguments for DeployGroup.
/// {@endtemplate}
/// {@macro pulumi_edas_deploy_group_deploy_group_args_doc}
class DeployGroupArgs {
  /// The ID of the application that you want to deploy.
  final pulumi.Input<String> appId;
  /// The name of the instance group that you want to create.
  final pulumi.Input<String> groupName;

  /// Creates a new [DeployGroupArgs].
  /// [appId] The ID of the application that you want to deploy.
  /// [groupName] The name of the instance group that you want to create.
  DeployGroupArgs({
    required pulumi.Output<String> appId,
    required pulumi.Output<String> groupName,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      groupName = pulumi.Input.asInput<String>(groupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'groupName': groupName,
    };
  }

  factory DeployGroupArgs.fromMap(Map<String, dynamic> map) {
    return DeployGroupArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
    );
  }
}

