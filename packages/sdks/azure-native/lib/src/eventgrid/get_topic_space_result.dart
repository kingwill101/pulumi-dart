// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getTopicSpace.
class GetTopicSpaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Description for the Topic Space resource.
  final String? description;

  /// Fully qualified identifier of the resource.
  final String id;

  /// Name of the resource.
  final String name;

  /// Provisioning state of the TopicSpace resource.
  final String provisioningState;

  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;

  /// The topic filters in the topic space.
  /// Example: "topicTemplates": [
  /// "devices/foo/bar",
  /// "devices/topic1/+",
  /// "devices/${principal.name}/${principal.attributes.keyName}" ].
  final List<String>? topicTemplates;

  /// Type of the resource.
  final String type;

  /// Creates a new [GetTopicSpaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description for the Topic Space resource.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the TopicSpace resource.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [topicTemplates] The topic filters in the topic space.
  /// [type] Type of the resource.
  GetTopicSpaceResult({
    required this.azureApiVersion,
    this.description,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.topicTemplates,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'topicTemplates': ?topicTemplates,
      'type': type,
    };
  }

  factory GetTopicSpaceResult.fromMap(Map<String, dynamic> map) {
    return GetTopicSpaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      topicTemplates: (() {
        final guardedValue = map['topicTemplates'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      type: map['type'] as String,
    );
  }
}
