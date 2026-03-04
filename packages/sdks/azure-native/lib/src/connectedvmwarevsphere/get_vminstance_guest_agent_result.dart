// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_credential_response.dart';
import 'http_proxy_configuration_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVMInstanceGuestAgent.
class GetVMInstanceGuestAgentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Username / Password Credentials to provision guest agent.
  final GuestCredentialResponse? credentials;

  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;

  /// HTTP Proxy configuration for the VM.
  final HttpProxyConfigurationResponse? httpProxyConfig;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// The resource id of the private link scope this machine is assigned to, if any.
  final String? privateLinkScopeResourceId;

  /// Gets or sets the guest agent provisioning action.
  final String? provisioningAction;

  /// Gets the provisioning state.
  final String provisioningState;

  /// Gets or sets the guest agent status.
  final String status;

  /// The resource status information.
  final List<ResourceStatusResponse> statuses;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Gets or sets a unique identifier for this resource.
  final String uuid;

  /// Creates a new [GetVMInstanceGuestAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [credentials] Username / Password Credentials to provision guest agent.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [httpProxyConfig] HTTP Proxy configuration for the VM.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [privateLinkScopeResourceId] The resource id of the private link scope this machine is assigned to, if any.
  /// [provisioningAction] Gets or sets the guest agent provisioning action.
  /// [provisioningState] Gets the provisioning state.
  /// [status] Gets or sets the guest agent status.
  /// [statuses] The resource status information.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Gets or sets a unique identifier for this resource.
  GetVMInstanceGuestAgentResult({
    required this.azureApiVersion,
    this.credentials,
    required this.customResourceName,
    this.httpProxyConfig,
    required this.id,
    required this.name,
    this.privateLinkScopeResourceId,
    this.provisioningAction,
    required this.provisioningState,
    required this.status,
    required this.statuses,
    required this.systemData,
    required this.type,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'credentials': ?credentials?.toMap(),
      'customResourceName': customResourceName,
      'httpProxyConfig': ?httpProxyConfig?.toMap(),
      'id': id,
      'name': name,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'provisioningAction': ?provisioningAction,
      'provisioningState': provisioningState,
      'status': status,
      'statuses':
          pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(
            statuses,
            (value) => value.toMap(),
          ),
      'systemData': systemData.toMap(),
      'type': type,
      'uuid': uuid,
    };
  }

  factory GetVMInstanceGuestAgentResult.fromMap(Map<String, dynamic> map) {
    return GetVMInstanceGuestAgentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return GuestCredentialResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      customResourceName: map['customResourceName'] as String,
      httpProxyConfig: (() {
        final guardedValue = map['httpProxyConfig'];
        if (guardedValue == null) return null;
        return HttpProxyConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateLinkScopeResourceId: (() {
        final guardedValue = map['privateLinkScopeResourceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningAction: (() {
        final guardedValue = map['provisioningAction'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(
        map['statuses']!,
        (value) => ResourceStatusResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
