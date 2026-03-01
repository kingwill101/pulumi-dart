// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_event_hub_get_event_hub_args_doc}
/// Arguments for getEventHub.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_event_hub_get_event_hub_args_doc}
class GetEventHubArgs {
  /// The name of this EventHub.
  final pulumi.Input<String> name;
  /// The name of the EventHub Namespace where the EventHub exists.
  final pulumi.Input<String> namespaceName;
  /// The name of the Resource Group where the EventHub exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEventHubArgs].
  /// [name] The name of this EventHub.
  /// [namespaceName] The name of the EventHub Namespace where the EventHub exists.
  /// [resourceGroupName] The name of the Resource Group where the EventHub exists.
  GetEventHubArgs({
    required String name,
    required String namespaceName,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEventHubArgs.fromMap(Map<String, dynamic> map) {
    return GetEventHubArgs(
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

