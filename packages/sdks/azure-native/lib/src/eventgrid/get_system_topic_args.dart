// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_system_topic_args_doc}
/// Arguments for getSystemTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_system_topic_args_doc}
class GetSystemTopicArgs {
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the system topic.
  final pulumi.Input<String> systemTopicName;

  /// Creates a new [GetSystemTopicArgs].
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [systemTopicName] Name of the system topic.
  GetSystemTopicArgs({
    required this.resourceGroupName,
    required this.systemTopicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'systemTopicName': systemTopicName,
    };
  }

  factory GetSystemTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      systemTopicName: pulumi.Input.fromValue(map['systemTopicName'] as String),
    );
  }
}
