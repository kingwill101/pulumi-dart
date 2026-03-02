// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_events_trigger.dart';

/// {@template pulumi_datafactory_trigger_args_doc}
/// The set of arguments for Trigger.
/// {@endtemplate}
/// {@macro pulumi_datafactory_trigger_args_doc}
class TriggerArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// Properties of the trigger.
  final pulumi.Input<BlobEventsTrigger> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The trigger name.
  final pulumi.Input<String>? triggerName;

  /// Creates a new [TriggerArgs].
  /// [factoryName] The factory name.
  /// [properties] Properties of the trigger.
  /// [resourceGroupName] The resource group name.
  /// [triggerName] The trigger name.
  TriggerArgs({
    required this.factoryName,
    required this.properties,
    required this.resourceGroupName,
    this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'properties': pulumi.Input.mapInputValue<BlobEventsTrigger, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'triggerName': ?triggerName,
    };
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      factoryName: (map['factoryName'] as String).input(),
      properties: (BlobEventsTrigger.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      triggerName: map['triggerName'] == null ? null : (map['triggerName'] as String).input(),
    );
  }
}

