// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_trigger_args_doc}
/// Arguments for getTrigger.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_trigger_args_doc}
class GetTriggerArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The trigger name.
  final pulumi.Input<String> triggerName;

  /// Creates a new [GetTriggerArgs].
  /// [factoryName] The factory name.
  /// [resourceGroupName] The resource group name.
  /// [triggerName] The trigger name.
  GetTriggerArgs({
    required String factoryName,
    required String resourceGroupName,
    required String triggerName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggerName = pulumi.Input.asInput<String>(triggerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
    };
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      factoryName: map['factoryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      triggerName: map['triggerName'] as String,
    );
  }
}

