// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDomainTopic.
class GetDomainTopicResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Name of the resource.
  final String name;
  /// Provisioning state of the domain topic.
  final String provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetDomainTopicResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the domain topic.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [type] Type of the resource.
  GetDomainTopicResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDomainTopicResult.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

