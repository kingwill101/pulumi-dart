// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiGatewayConfigConnection.
class GetApiGatewayConfigConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The default hostname of the data-plane gateway.
  final String? defaultHostname;
  /// ETag of the resource.
  final String? etag;
  /// The hostnames of the data-plane gateway to which requests can be sent.
  final List<String>? hostnames;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The current provisioning state of the API Management gateway config connection
  final String? provisioningState;
  /// The link to the API Management service workspace.
  final String? sourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetApiGatewayConfigConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultHostname] The default hostname of the data-plane gateway.
  /// [etag] ETag of the resource.
  /// [hostnames] The hostnames of the data-plane gateway to which requests can be sent.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The current provisioning state of the API Management gateway config connection
  /// [sourceId] The link to the API Management service workspace.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetApiGatewayConfigConnectionResult({
    this.azureApiVersion,
    this.defaultHostname,
    this.etag,
    this.hostnames,
    this.id,
    this.name,
    this.provisioningState,
    this.sourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'defaultHostname': ?defaultHostname,
      'etag': ?etag,
      'hostnames': ?hostnames,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sourceId': ?sourceId,
      'type': ?type,
    };
  }

  factory GetApiGatewayConfigConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayConfigConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
