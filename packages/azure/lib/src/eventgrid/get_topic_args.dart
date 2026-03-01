// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_topic_get_topic_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_topic_get_topic_args_doc}
class GetTopicArgs {
  /// The name of the EventGrid Topic resource.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the EventGrid Topic exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetTopicArgs].
  /// [name] The name of the EventGrid Topic resource.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Topic exists.
  GetTopicArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

