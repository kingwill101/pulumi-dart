// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKeyGroup.
class GetKeyGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? deploymentStatus;
  /// Resource ID.
  final String? id;
  /// Names of UrlSigningKey type secret objects
  final List<ResourceReferenceResponse>? keyReferences;
  /// Resource name.
  final String? name;
  /// Provisioning status
  final String? provisioningState;
  /// Read only system data
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

  /// Creates a new [GetKeyGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentStatus] Optional.
  /// [id] Resource ID.
  /// [keyReferences] Names of UrlSigningKey type secret objects
  /// [name] Resource name.
  /// [provisioningState] Provisioning status
  /// [systemData] Read only system data
  /// [type] Resource type.
  const GetKeyGroupResult({
    this.azureApiVersion,
    this.deploymentStatus,
    this.id,
    this.keyReferences,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'deploymentStatus': ?deploymentStatus,
      'id': ?id,
      'keyReferences': ?(() { final guardedValue = keyReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetKeyGroupResult.fromMap(Map<String, dynamic> map) {
    return GetKeyGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyReferences: (() { final guardedValue = map['keyReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
