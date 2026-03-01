// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getClientGroup.
class GetClientGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description for the Client Group resource.
  final String? description;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Name of the resource.
  final String name;
  /// Provisioning state of the ClientGroup resource.
  final String provisioningState;
  /// The grouping query for the clients.
  /// Example : attributes.keyName IN ['a', 'b', 'c'].
  final String? query;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetClientGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description for the Client Group resource.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the ClientGroup resource.
  /// [query] The grouping query for the clients.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [type] Type of the resource.
  GetClientGroupResult({
    required this.azureApiVersion,
    this.description,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.query,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'query': ?query,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetClientGroupResult.fromMap(Map<String, dynamic> map) {
    return GetClientGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

