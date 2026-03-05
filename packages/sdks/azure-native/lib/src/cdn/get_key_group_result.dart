// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKeyGroup.
class GetKeyGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String deploymentStatus;
  /// Resource ID.
  final String id;
  /// Names of UrlSigningKey type secret objects
  final List<ResourceReferenceResponse>? keyReferences;
  /// Resource name.
  final String name;
  /// Provisioning status
  final String provisioningState;
  /// Read only system data
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetKeyGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentStatus] Required.
  /// [id] Resource ID.
  /// [keyReferences] Names of UrlSigningKey type secret objects
  /// [name] Resource name.
  /// [provisioningState] Provisioning status
  /// [systemData] Read only system data
  /// [type] Resource type.
  GetKeyGroupResult({
    required this.azureApiVersion,
    required this.deploymentStatus,
    required this.id,
    this.keyReferences,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deploymentStatus': deploymentStatus,
      'id': id,
      'keyReferences': ?(() { final guardedValue = keyReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetKeyGroupResult.fromMap(Map<String, dynamic> map) {
    return GetKeyGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      id: map['id'] as String,
      keyReferences: (() { final guardedValue = map['keyReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

