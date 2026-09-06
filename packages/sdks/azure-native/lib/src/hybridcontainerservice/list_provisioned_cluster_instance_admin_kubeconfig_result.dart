// ignore_for_file: unused_element, unnecessary_cast

import 'list_credential_response_response_error.dart';
import 'list_credential_response_response_properties.dart';

/// Result data returned by listProvisionedClusterInstanceAdminKubeconfig.
class ListProvisionedClusterInstanceAdminKubeconfigResult {
  final ListCredentialResponseResponseError? error;
  /// Operation Id
  final String? id;
  /// Operation Name
  final String? name;
  final ListCredentialResponseResponseProperties? properties;
  /// ARM Resource Id of the provisioned cluster instance
  final String? resourceId;
  /// Provisioning state of the resource
  final String? status;

  /// Creates a new [ListProvisionedClusterInstanceAdminKubeconfigResult].
  /// [error] Optional.
  /// [id] Operation Id
  /// [name] Operation Name
  /// [properties] Optional.
  /// [resourceId] ARM Resource Id of the provisioned cluster instance
  /// [status] Provisioning state of the resource
  const ListProvisionedClusterInstanceAdminKubeconfigResult({
    this.error,
    this.id,
    this.name,
    this.properties,
    this.resourceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error?.toMap(),
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'resourceId': ?resourceId,
      'status': ?status,
    };
  }

  factory ListProvisionedClusterInstanceAdminKubeconfigResult.fromMap(Map<String, dynamic> map) {
    return ListProvisionedClusterInstanceAdminKubeconfigResult(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ListCredentialResponseResponseError.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ListCredentialResponseResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
