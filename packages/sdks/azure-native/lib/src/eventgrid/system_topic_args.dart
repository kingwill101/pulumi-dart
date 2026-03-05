// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_info.dart';

/// {@template pulumi_eventgrid_system_topic_args_doc}
/// The set of arguments for SystemTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_system_topic_args_doc}
class SystemTopicArgs {
  /// Identity information for the resource.
  final pulumi.Input<IdentityInfo>? identity;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Source for the system topic.
  final pulumi.Input<String>? source;
  /// Name of the system topic.
  final pulumi.Input<String>? systemTopicName;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// TopicType for the system topic.
  final pulumi.Input<String>? topicType;

  /// Creates a new [SystemTopicArgs].
  /// [identity] Identity information for the resource.
  /// [location] Location of the resource.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [source] Source for the system topic.
  /// [systemTopicName] Name of the system topic.
  /// [tags] Tags of the resource.
  /// [topicType] TopicType for the system topic.
  SystemTopicArgs({
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.source,
    this.systemTopicName,
    this.tags,
    this.topicType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityInfo, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'source': ?source,
      'systemTopicName': ?systemTopicName,
      'tags': ?tags,
      'topicType': ?topicType,
    };
  }

  factory SystemTopicArgs.fromMap(Map<String, dynamic> map) {
    return SystemTopicArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemTopicName: (() { final guardedValue = map['systemTopicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topicType: (() { final guardedValue = map['topicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

