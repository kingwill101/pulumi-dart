// ignore_for_file: unused_element, unnecessary_cast

import 'identity_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSystemTopic.
class GetSystemTopicResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Identity information for the resource.
  final IdentityInfoResponse? identity;
  /// Location of the resource.
  final String location;
  /// Metric resource id for the system topic.
  final String metricResourceId;
  /// Name of the resource.
  final String name;
  /// Provisioning state of the system topic.
  final String provisioningState;
  /// Source for the system topic.
  final String? source;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// TopicType for the system topic.
  final String? topicType;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetSystemTopicResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the resource.
  /// [identity] Identity information for the resource.
  /// [location] Location of the resource.
  /// [metricResourceId] Metric resource id for the system topic.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the system topic.
  /// [source] Source for the system topic.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [topicType] TopicType for the system topic.
  /// [type] Type of the resource.
  GetSystemTopicResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.location,
    required this.metricResourceId,
    required this.name,
    required this.provisioningState,
    this.source,
    required this.systemData,
    this.tags,
    this.topicType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'metricResourceId': metricResourceId,
      'name': name,
      'provisioningState': provisioningState,
      'source': ?source,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'topicType': ?topicType,
      'type': type,
    };
  }

  factory GetSystemTopicResult.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityInfoResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      metricResourceId: map['metricResourceId'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      topicType: map['topicType'] == null ? null : map['topicType'] as String,
      type: map['type'] as String,
    );
  }
}

