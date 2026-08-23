// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listEndpointCredentials.
class ListEndpointCredentialsResult {
  /// Access key for hybrid connection.
  final String accessKey;
  /// The expiration of access key in unix time.
  final double? expiresOn;
  /// Azure Relay hybrid connection name for the resource.
  final String hybridConnectionName;
  /// The namespace name.
  final String namespaceName;
  /// The suffix domain name of relay namespace.
  final String namespaceNameSuffix;
  /// The token to access the enabled service.
  final String? serviceConfigurationToken;

  /// Creates a new [ListEndpointCredentialsResult].
  /// [accessKey] Access key for hybrid connection.
  /// [expiresOn] The expiration of access key in unix time.
  /// [hybridConnectionName] Azure Relay hybrid connection name for the resource.
  /// [namespaceName] The namespace name.
  /// [namespaceNameSuffix] The suffix domain name of relay namespace.
  /// [serviceConfigurationToken] The token to access the enabled service.
  const ListEndpointCredentialsResult({
    required this.accessKey,
    this.expiresOn,
    required this.hybridConnectionName,
    required this.namespaceName,
    required this.namespaceNameSuffix,
    this.serviceConfigurationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'expiresOn': ?expiresOn,
      'hybridConnectionName': hybridConnectionName,
      'namespaceName': namespaceName,
      'namespaceNameSuffix': namespaceNameSuffix,
      'serviceConfigurationToken': ?serviceConfigurationToken,
    };
  }

  factory ListEndpointCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListEndpointCredentialsResult(
      accessKey: map['accessKey'] as String,
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as double; })(),
      hybridConnectionName: map['hybridConnectionName'] as String,
      namespaceName: map['namespaceName'] as String,
      namespaceNameSuffix: map['namespaceNameSuffix'] as String,
      serviceConfigurationToken: (() { final guardedValue = map['serviceConfigurationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
