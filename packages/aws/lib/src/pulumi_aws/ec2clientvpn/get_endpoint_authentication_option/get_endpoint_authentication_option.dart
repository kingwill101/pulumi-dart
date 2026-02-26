// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointAuthenticationOption {
  final String activeDirectoryId;
  final String rootCertificateChainArn;
  final String samlProviderArn;
  final String selfServiceSamlProviderArn;
  final String type;

  GetEndpointAuthenticationOption({
    required this.activeDirectoryId,
    required this.rootCertificateChainArn,
    required this.samlProviderArn,
    required this.selfServiceSamlProviderArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activeDirectoryId'] = activeDirectoryId;
    map['rootCertificateChainArn'] = rootCertificateChainArn;
    map['samlProviderArn'] = samlProviderArn;
    map['selfServiceSamlProviderArn'] = selfServiceSamlProviderArn;
    map['type'] = type;
    return map;
  }

  factory GetEndpointAuthenticationOption.fromMap(Map<String, dynamic> map) {
    return GetEndpointAuthenticationOption(
      activeDirectoryId: map['activeDirectoryId'] as String,
      rootCertificateChainArn: map['rootCertificateChainArn'] as String,
      samlProviderArn: map['samlProviderArn'] as String,
      selfServiceSamlProviderArn: map['selfServiceSamlProviderArn'] as String,
      type: map['type'] as String,
    );
  }
}
