// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_system_topic_identity.dart';

/// Result data returned by getSystemTopic.
class GetSystemTopicResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below, which contains the Managed Service Identity information for this Event Grid System Topic.
  final List<GetSystemTopicIdentity> identities;
  final String location;
  final String metricArmResourceId;
  /// The Metric Resource ID of the Event Grid System Topic.
  final String metricResourceId;
  final String name;
  final String resourceGroupName;
  final String sourceArmResourceId;
  /// The ID of the Event Grid System Topic ARM Source.
  final String sourceResourceId;
  /// A mapping of tags which are assigned to the Event Grid System Topic.
  final Map<String, String> tags;
  /// The Topic Type of the Event Grid System Topic.
  final String topicType;

  /// Creates a new [GetSystemTopicResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below, which contains the Managed Service Identity information for this Event Grid System Topic.
  /// [location] Required.
  /// [metricArmResourceId] Required.
  /// [metricResourceId] The Metric Resource ID of the Event Grid System Topic.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [sourceArmResourceId] Required.
  /// [sourceResourceId] The ID of the Event Grid System Topic ARM Source.
  /// [tags] A mapping of tags which are assigned to the Event Grid System Topic.
  /// [topicType] The Topic Type of the Event Grid System Topic.
  GetSystemTopicResult({
    required this.id,
    required this.identities,
    required this.location,
    required this.metricArmResourceId,
    required this.metricResourceId,
    required this.name,
    required this.resourceGroupName,
    required this.sourceArmResourceId,
    required this.sourceResourceId,
    required this.tags,
    required this.topicType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identities': pulumi.Input.encodeList<GetSystemTopicIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'metricArmResourceId': metricArmResourceId,
      'metricResourceId': metricResourceId,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sourceArmResourceId': sourceArmResourceId,
      'sourceResourceId': sourceResourceId,
      'tags': tags,
      'topicType': topicType,
    };
  }

  factory GetSystemTopicResult.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicResult(
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetSystemTopicIdentity>(map['identities'], (value) => GetSystemTopicIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      metricArmResourceId: map['metricArmResourceId'] as String,
      metricResourceId: map['metricResourceId'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sourceArmResourceId: map['sourceArmResourceId'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      topicType: map['topicType'] as String,
    );
  }
}

