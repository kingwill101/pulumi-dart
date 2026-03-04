// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGatewayHostnameConfiguration.
class GetGatewayHostnameConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Identifier of Certificate entity that will be used for TLS connection establishment
  final String? certificateId;

  /// Hostname value. Supports valid domain name, partial or full wildcard
  final String? hostname;

  /// Specifies if HTTP/2.0 is supported
  final bool? http2Enabled;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// Determines whether gateway requests client certificate
  final bool? negotiateClientCertificate;

  /// Specifies if TLS 1.0 is supported
  final bool? tls10Enabled;

  /// Specifies if TLS 1.1 is supported
  final bool? tls11Enabled;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGatewayHostnameConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificateId] Identifier of Certificate entity that will be used for TLS connection establishment
  /// [hostname] Hostname value. Supports valid domain name, partial or full wildcard
  /// [http2Enabled] Specifies if HTTP/2.0 is supported
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [negotiateClientCertificate] Determines whether gateway requests client certificate
  /// [tls10Enabled] Specifies if TLS 1.0 is supported
  /// [tls11Enabled] Specifies if TLS 1.1 is supported
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetGatewayHostnameConfigurationResult({
    required this.azureApiVersion,
    this.certificateId,
    this.hostname,
    this.http2Enabled,
    required this.id,
    required this.name,
    this.negotiateClientCertificate,
    this.tls10Enabled,
    this.tls11Enabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'certificateId': ?certificateId,
      'hostname': ?hostname,
      'http2Enabled': ?http2Enabled,
      'id': id,
      'name': name,
      'negotiateClientCertificate': ?negotiateClientCertificate,
      'tls10Enabled': ?tls10Enabled,
      'tls11Enabled': ?tls11Enabled,
      'type': type,
    };
  }

  factory GetGatewayHostnameConfigurationResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayHostnameConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      certificateId: (() {
        final guardedValue = map['certificateId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      hostname: (() {
        final guardedValue = map['hostname'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      http2Enabled: (() {
        final guardedValue = map['http2Enabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      negotiateClientCertificate: (() {
        final guardedValue = map['negotiateClientCertificate'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      tls10Enabled: (() {
        final guardedValue = map['tls10Enabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      tls11Enabled: (() {
        final guardedValue = map['tls11Enabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      type: map['type'] as String,
    );
  }
}
