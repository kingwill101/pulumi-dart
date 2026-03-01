// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listEndpointIngressGatewayCredentials.
class ListEndpointIngressGatewayCredentialsResult {
  /// Access key for hybrid connection.
  final String accessKey;
  /// The expiration of access key in unix time.
  final double? expiresOn;
  /// The ingress hostname.
  final String hostname;
  /// Azure Relay hybrid connection name for the resource.
  final String hybridConnectionName;
  /// The namespace name.
  final String namespaceName;
  /// The suffix domain name of relay namespace.
  final String namespaceNameSuffix;
  /// The arc ingress gateway server app id.
  final String serverId;
  /// The token to access the enabled service.
  final String? serviceConfigurationToken;
  /// The target resource home tenant id.
  final String tenantId;

  /// Creates a new [ListEndpointIngressGatewayCredentialsResult].
  /// [accessKey] Access key for hybrid connection.
  /// [expiresOn] The expiration of access key in unix time.
  /// [hostname] The ingress hostname.
  /// [hybridConnectionName] Azure Relay hybrid connection name for the resource.
  /// [namespaceName] The namespace name.
  /// [namespaceNameSuffix] The suffix domain name of relay namespace.
  /// [serverId] The arc ingress gateway server app id.
  /// [serviceConfigurationToken] The token to access the enabled service.
  /// [tenantId] The target resource home tenant id.
  ListEndpointIngressGatewayCredentialsResult({
    required this.accessKey,
    this.expiresOn,
    required this.hostname,
    required this.hybridConnectionName,
    required this.namespaceName,
    required this.namespaceNameSuffix,
    required this.serverId,
    this.serviceConfigurationToken,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'expiresOn': ?expiresOn,
      'hostname': hostname,
      'hybridConnectionName': hybridConnectionName,
      'namespaceName': namespaceName,
      'namespaceNameSuffix': namespaceNameSuffix,
      'serverId': serverId,
      'serviceConfigurationToken': ?serviceConfigurationToken,
      'tenantId': tenantId,
    };
  }

  factory ListEndpointIngressGatewayCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListEndpointIngressGatewayCredentialsResult(
      accessKey: map['accessKey'] as String,
      expiresOn: map['expiresOn'] == null ? null : map['expiresOn'] as double,
      hostname: map['hostname'] as String,
      hybridConnectionName: map['hybridConnectionName'] as String,
      namespaceName: map['namespaceName'] as String,
      namespaceNameSuffix: map['namespaceNameSuffix'] as String,
      serverId: map['serverId'] as String,
      serviceConfigurationToken: map['serviceConfigurationToken'] == null ? null : map['serviceConfigurationToken'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

