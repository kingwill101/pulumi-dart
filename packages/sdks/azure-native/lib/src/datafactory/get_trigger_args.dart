// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_trigger_args_doc}
/// Arguments for getTrigger.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_trigger_args_doc}
class GetTriggerArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The trigger name.
  final pulumi.Input<String> triggerName;

  /// Creates a new [GetTriggerArgs].
  /// [factoryName] The factory name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [triggerName] The trigger name.
  const GetTriggerArgs({
    required this.factoryName,
    required this.resourceGroupName,
    required this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
    };
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      triggerName: pulumi.Input.fromValue(map['triggerName'] as String),
    );
  }
}
