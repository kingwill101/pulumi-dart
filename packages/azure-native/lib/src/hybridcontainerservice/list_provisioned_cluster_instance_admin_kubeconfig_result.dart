// ignore_for_file: unused_element, unnecessary_cast

import 'list_credential_response_response_error.dart';
import 'list_credential_response_response_properties.dart';

/// Result data returned by listProvisionedClusterInstanceAdminKubeconfig.
class ListProvisionedClusterInstanceAdminKubeconfigResult {
  final ListCredentialResponseResponseError? error;
  /// Operation Id
  final String id;
  /// Operation Name
  final String name;
  final ListCredentialResponseResponseProperties properties;
  /// ARM Resource Id of the provisioned cluster instance
  final String resourceId;
  /// Provisioning state of the resource
  final String status;

  /// Creates a new [ListProvisionedClusterInstanceAdminKubeconfigResult].
  /// [error] Optional.
  /// [id] Operation Id
  /// [name] Operation Name
  /// [properties] Required.
  /// [resourceId] ARM Resource Id of the provisioned cluster instance
  /// [status] Provisioning state of the resource
  ListProvisionedClusterInstanceAdminKubeconfigResult({
    this.error,
    required this.id,
    required this.name,
    required this.properties,
    required this.resourceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'resourceId': resourceId,
      'status': status,
    };
  }

  factory ListProvisionedClusterInstanceAdminKubeconfigResult.fromMap(Map<String, dynamic> map) {
    return ListProvisionedClusterInstanceAdminKubeconfigResult(
      error: map['error'] == null ? null : ListCredentialResponseResponseError.fromMap((map['error'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ListCredentialResponseResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceId: map['resourceId'] as String,
      status: map['status'] as String,
    );
  }
}

