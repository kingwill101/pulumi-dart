// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_logic_app_args_doc}
/// The set of arguments for LogicApp.
/// {@endtemplate}
/// {@macro pulumi_app_logic_app_args_doc}
class LogicAppArgs {
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// Name of the Logic App, the extension resource.
  final pulumi.Input<String>? logicAppName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [LogicAppArgs].
  /// [containerAppName] Name of the Container App.
  /// [logicAppName] Name of the Logic App, the extension resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  LogicAppArgs({
    required this.containerAppName,
    this.logicAppName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'logicAppName': ?logicAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory LogicAppArgs.fromMap(Map<String, dynamic> map) {
    return LogicAppArgs(
      containerAppName: pulumi.Input.fromValue(map['containerAppName'] as String),
      logicAppName: (() { final guardedValue = map['logicAppName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

