// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiGatewayConfigConnection.
class GetApiGatewayConfigConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The default hostname of the data-plane gateway.
  final String defaultHostname;
  /// ETag of the resource.
  final String etag;
  /// The hostnames of the data-plane gateway to which requests can be sent.
  final List<String>? hostnames;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The current provisioning state of the API Management gateway config connection
  final String provisioningState;
  /// The link to the API Management service workspace.
  final String? sourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetApiGatewayConfigConnectionResult({
    required this.azureApiVersion,
    required this.defaultHostname,
    required this.etag,
    this.hostnames,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.sourceId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultHostname': defaultHostname,
      'etag': etag,
      'hostnames': ?hostnames,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'sourceId': ?sourceId,
      'type': type,
    };
  }

  factory GetApiGatewayConfigConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayConfigConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultHostname: map['defaultHostname'] as String,
      etag: map['etag'] as String,
      hostnames: map['hostnames'] == null ? null : (map['hostnames'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId'] as String,
      type: map['type'] as String,
    );
  }
}

