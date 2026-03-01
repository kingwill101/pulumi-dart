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
    pulumi.Output<IdentityInfo>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? source,
    pulumi.Output<String>? systemTopicName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? topicType,
  }) :
      identity = pulumi.Input.asOptionalInput<IdentityInfo>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asOptionalInput<String>(source),
      systemTopicName = pulumi.Input.asOptionalInput<String>(systemTopicName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicType = pulumi.Input.asOptionalInput<String>(topicType);

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
      identity: map['identity'] == null ? null : pulumi.Output.create<IdentityInfo>(IdentityInfo.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      systemTopicName: map['systemTopicName'] == null ? null : pulumi.Output.create<String>(map['systemTopicName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topicType: map['topicType'] == null ? null : pulumi.Output.create<String>(map['topicType'] as String),
    );
  }
}

