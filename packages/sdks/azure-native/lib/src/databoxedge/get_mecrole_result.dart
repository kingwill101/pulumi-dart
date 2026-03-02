// ignore_for_file: unused_element, unnecessary_cast

import 'asymmetric_encrypted_secret_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMECRole.
class GetMECRoleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Activation key of the MEC.
  final AsymmetricEncryptedSecretResponse? connectionString;
  /// Controller Endpoint.
  final String? controllerEndpoint;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// Role type.
  /// Expected value is 'MEC'.
  final String kind;
  /// The object name.
  final String name;
  /// Unique Id of the Resource.
  final String? resourceUniqueId;
  /// Role status.
  final String roleStatus;
  /// Metadata pertaining to creation and last modification of Role
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;

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
  GetMECRoleResult({
    required this.azureApiVersion,
    this.connectionString,
    this.controllerEndpoint,
    required this.id,
    required this.kind,
    required this.name,
    this.resourceUniqueId,
    required this.roleStatus,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectionString': ?connectionString == null ? null : connectionString!.toMap(),
      'controllerEndpoint': ?controllerEndpoint,
      'id': id,
      'kind': kind,
      'name': name,
      'resourceUniqueId': ?resourceUniqueId,
      'roleStatus': roleStatus,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetMECRoleResult.fromMap(Map<String, dynamic> map) {
    return GetMECRoleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionString: map['connectionString'] == null ? null : AsymmetricEncryptedSecretResponse.fromMap((map['connectionString']! as Map).cast<String, dynamic>()),
      controllerEndpoint: map['controllerEndpoint'] == null ? null : map['controllerEndpoint']! as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      resourceUniqueId: map['resourceUniqueId'] == null ? null : map['resourceUniqueId']! as String,
      roleStatus: map['roleStatus'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

