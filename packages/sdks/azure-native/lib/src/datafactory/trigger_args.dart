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
    required pulumi.Output<String> factoryName,
    required pulumi.Output<BlobEventsTrigger> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? triggerName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      properties = pulumi.Input.asInput<BlobEventsTrigger>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggerName = pulumi.Input.asOptionalInput<String>(triggerName);

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
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      properties: pulumi.Output.create<BlobEventsTrigger>(BlobEventsTrigger.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      triggerName: map['triggerName'] == null ? null : pulumi.Output.create<String>(map['triggerName'] as String),
    );
  }
}

