// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chat_model_deployment_properties.dart';

/// {@template pulumi_discovery_chat_model_deployment_args_doc}
/// The set of arguments for ChatModelDeployment.
/// {@endtemplate}
/// {@macro pulumi_discovery_chat_model_deployment_args_doc}
class ChatModelDeploymentArgs {
  /// The name of the ChatModelDeployment
  final pulumi.Input<String?>? chatModelDeploymentName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ChatModelDeploymentProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the Workspace
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ChatModelDeploymentArgs].
  /// [chatModelDeploymentName] The name of the ChatModelDeployment
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [workspaceName] The name of the Workspace
  const ChatModelDeploymentArgs({
    this.chatModelDeploymentName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatModelDeploymentName': ?chatModelDeploymentName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ChatModelDeploymentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory ChatModelDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ChatModelDeploymentArgs(
      chatModelDeploymentName: (() { final guardedValue = map['chatModelDeploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChatModelDeploymentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
