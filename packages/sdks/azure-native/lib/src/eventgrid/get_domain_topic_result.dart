// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDomainTopic.
class GetDomainTopicResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified identifier of the resource.
  final String? id;
  /// Name of the resource.
  final String? name;
  /// Provisioning state of the domain topic.
  final String? provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse? systemData;
  /// Type of the resource.
  final String? type;

  /// Creates a new [GetDomainTopicResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the domain topic.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [type] Type of the resource.
  const GetDomainTopicResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDomainTopicResult.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
