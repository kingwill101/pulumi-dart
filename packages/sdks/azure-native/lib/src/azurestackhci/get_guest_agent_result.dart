// ignore_for_file: unused_element, unnecessary_cast

import 'guest_credential_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGuestAgent.
class GetGuestAgentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Username / Password Credentials to provision guest agent.
  final GuestCredentialResponse? credentials;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The guest agent provisioning action.
  final String? provisioningAction;
  /// Provisioning state of the virtual machine instance.
  final String provisioningState;
  /// The guest agent status.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGuestAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [credentials] Username / Password Credentials to provision guest agent.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningAction] The guest agent provisioning action.
  /// [provisioningState] Provisioning state of the virtual machine instance.
  /// [status] The guest agent status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetGuestAgentResult({
    required this.azureApiVersion,
    this.credentials,
    required this.id,
    required this.name,
    this.provisioningAction,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'id': id,
      'name': name,
      'provisioningAction': ?provisioningAction,
      'provisioningState': provisioningState,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetGuestAgentResult.fromMap(Map<String, dynamic> map) {
    return GetGuestAgentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      credentials: map['credentials'] == null ? null : GuestCredentialResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningAction: map['provisioningAction'] == null ? null : map['provisioningAction'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

