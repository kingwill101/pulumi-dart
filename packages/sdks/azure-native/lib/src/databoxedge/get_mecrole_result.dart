// ignore_for_file: unused_element, unnecessary_cast

import 'asymmetric_encrypted_secret_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMECRole.
class GetMECRoleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Activation key of the MEC.
  final AsymmetricEncryptedSecretResponse? connectionString;
  /// Controller Endpoint.
  final String? controllerEndpoint;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// Role type.
  /// Expected value is 'MEC'.
  final String? kind;
  /// The object name.
  final String? name;
  /// Unique Id of the Resource.
  final String? resourceUniqueId;
  /// Role status.
  final String? roleStatus;
  /// Metadata pertaining to creation and last modification of Role
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

  /// Creates a new [GetMECRoleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionString] Activation key of the MEC.
  /// [controllerEndpoint] Controller Endpoint.
  /// [id] The path ID that uniquely identifies the object.
  /// [kind] Role type.
  /// [name] The object name.
  /// [resourceUniqueId] Unique Id of the Resource.
  /// [roleStatus] Role status.
  /// [systemData] Metadata pertaining to creation and last modification of Role
  /// [type] The hierarchical type of the object.
  const GetMECRoleResult({
    this.azureApiVersion,
    this.connectionString,
    this.controllerEndpoint,
    this.id,
    this.kind,
    this.name,
    this.resourceUniqueId,
    this.roleStatus,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectionString': ?connectionString?.toMap(),
      'controllerEndpoint': ?controllerEndpoint,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'resourceUniqueId': ?resourceUniqueId,
      'roleStatus': ?roleStatus,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetMECRoleResult.fromMap(Map<String, dynamic> map) {
    return GetMECRoleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      controllerEndpoint: (() { final guardedValue = map['controllerEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceUniqueId: (() { final guardedValue = map['resourceUniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleStatus: (() { final guardedValue = map['roleStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
