// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointAuthenticationOption {
  final pulumi.Input<String> activeDirectoryId;
  final pulumi.Input<String> rootCertificateChainArn;
  final pulumi.Input<String> samlProviderArn;
  final pulumi.Input<String> selfServiceSamlProviderArn;
  final pulumi.Input<String> type;

  /// Creates a new [GetEndpointAuthenticationOption].
  /// [activeDirectoryId] Required.
  /// [rootCertificateChainArn] Required.
  /// [samlProviderArn] Required.
  /// [selfServiceSamlProviderArn] Required.
  /// [type] Required.
  GetEndpointAuthenticationOption({
    required this.activeDirectoryId,
    required this.rootCertificateChainArn,
    required this.samlProviderArn,
    required this.selfServiceSamlProviderArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryId': activeDirectoryId,
      'rootCertificateChainArn': rootCertificateChainArn,
      'samlProviderArn': samlProviderArn,
      'selfServiceSamlProviderArn': selfServiceSamlProviderArn,
      'type': type,
    };
  }

  factory GetEndpointAuthenticationOption.fromMap(Map<String, dynamic> map) {
    return GetEndpointAuthenticationOption(
      activeDirectoryId: (map['activeDirectoryId'] as String).input(),
      rootCertificateChainArn: (map['rootCertificateChainArn'] as String).input(),
      samlProviderArn: (map['samlProviderArn'] as String).input(),
      selfServiceSamlProviderArn: (map['selfServiceSamlProviderArn'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

