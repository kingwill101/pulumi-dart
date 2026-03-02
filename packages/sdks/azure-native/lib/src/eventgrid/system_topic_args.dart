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
      identity: map['identity'] == null ? null : (IdentityInfo.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      systemTopicName: map['systemTopicName'] == null ? null : (map['systemTopicName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      topicType: map['topicType'] == null ? null : (map['topicType'] as String).input(),
    );
  }
}

