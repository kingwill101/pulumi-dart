// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_logic_app_args_doc}
/// Arguments for getLogicApp.
/// {@endtemplate}
/// {@macro pulumi_app_get_logic_app_args_doc}
class GetLogicAppArgs {
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// Name of the Logic App, the extension resource.
  final pulumi.Input<String> logicAppName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLogicAppArgs].
  /// [containerAppName] Name of the Container App.
  /// [logicAppName] Name of the Logic App, the extension resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLogicAppArgs({
    required pulumi.Output<String> containerAppName,
    required pulumi.Output<String> logicAppName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      logicAppName = pulumi.Input.asInput<String>(logicAppName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'logicAppName': logicAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLogicAppArgs.fromMap(Map<String, dynamic> map) {
    return GetLogicAppArgs(
      containerAppName: pulumi.Output.create<String>(map['containerAppName'] as String),
      logicAppName: pulumi.Output.create<String>(map['logicAppName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

