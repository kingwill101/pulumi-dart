// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom domains created on the CDN endpoint.
class DeepCreatedCustomDomainResponse {
  /// The host name of the custom domain. Must be a domain name.
  final pulumi.Input<String> hostName;
  /// Custom domain name.
  final pulumi.Input<String> name;
  /// Special validation or data may be required when delivering CDN to some regions due to local compliance reasons. E.g. ICP license number of a custom domain is required to deliver content in China.
  final pulumi.Input<String>? validationData;

  /// Creates a new [DeepCreatedCustomDomainResponse].
  /// [hostName] The host name of the custom domain. Must be a domain name.
  /// [name] Custom domain name.
  /// [validationData] Special validation or data may be required when delivering CDN to some regions due to local compliance reasons. E.g. ICP license number of a custom domain is required to deliver content in China.
  const DeepCreatedCustomDomainResponse({
    required this.hostName,
    required this.name,
    this.validationData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'name': name,
      'validationData': ?validationData,
    };
  }

  factory DeepCreatedCustomDomainResponse.fromMap(Map<String, dynamic> map) {
    return DeepCreatedCustomDomainResponse(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
