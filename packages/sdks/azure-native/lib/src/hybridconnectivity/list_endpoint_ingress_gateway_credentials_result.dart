// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listEndpointIngressGatewayCredentials.
class ListEndpointIngressGatewayCredentialsResult {
  /// Access key for hybrid connection.
  final String? accessKey;
  /// The expiration of access key in unix time.
  final double? expiresOn;
  /// The ingress hostname.
  final String? hostname;
  /// Azure Relay hybrid connection name for the resource.
  final String? hybridConnectionName;
  /// The namespace name.
  final String? namespaceName;
  /// The suffix domain name of relay namespace.
  final String? namespaceNameSuffix;
  /// The arc ingress gateway server app id.
  final String? serverId;
  /// The token to access the enabled service.
  final String? serviceConfigurationToken;
  /// The target resource home tenant id.
  final String? tenantId;

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
  const ListEndpointIngressGatewayCredentialsResult({
    this.accessKey,
    this.expiresOn,
    this.hostname,
    this.hybridConnectionName,
    this.namespaceName,
    this.namespaceNameSuffix,
    this.serverId,
    this.serviceConfigurationToken,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'expiresOn': ?expiresOn,
      'hostname': ?hostname,
      'hybridConnectionName': ?hybridConnectionName,
      'namespaceName': ?namespaceName,
      'namespaceNameSuffix': ?namespaceNameSuffix,
      'serverId': ?serverId,
      'serviceConfigurationToken': ?serviceConfigurationToken,
      'tenantId': ?tenantId,
    };
  }

  factory ListEndpointIngressGatewayCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListEndpointIngressGatewayCredentialsResult(
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hybridConnectionName: (() { final guardedValue = map['hybridConnectionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceNameSuffix: (() { final guardedValue = map['namespaceNameSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceConfigurationToken: (() { final guardedValue = map['serviceConfigurationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
