// ignore_for_file: unused_element, unnecessary_cast

import 'resource_guard_proxy_base_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDppResourceGuardProxy.
class GetDppResourceGuardProxyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Id represents the complete path to the resource.
  final String? id;
  /// Resource name associated with the resource.
  final String? name;
  /// ResourceGuardProxyBaseResource properties
  final ResourceGuardProxyBaseResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String? type;

  /// Creates a new [GetDppResourceGuardProxyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id represents the complete path to the resource.
  /// [name] Resource name associated with the resource.
  /// [properties] ResourceGuardProxyBaseResource properties
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  const GetDppResourceGuardProxyResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDppResourceGuardProxyResult.fromMap(Map<String, dynamic> map) {
    return GetDppResourceGuardProxyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ResourceGuardProxyBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
