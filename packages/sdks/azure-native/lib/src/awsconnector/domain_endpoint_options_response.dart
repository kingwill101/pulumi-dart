// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tlssecurity_policy_enum_value_response.dart';

/// Definition of DomainEndpointOptions
class DomainEndpointOptionsResponse {
  /// <p>The fully qualified URL for the custom endpoint.</p>
  final pulumi.Input<String>? customEndpoint;
  /// <p>The ARN for your security certificate, managed in Amazon Web Services Certificate Manager (ACM).</p>
  final pulumi.Input<String>? customEndpointCertificateArn;
  /// <p>Whether to enable a custom endpoint for the domain.</p>
  final pulumi.Input<bool>? customEndpointEnabled;
  /// <p>True to require that all traffic to the domain arrive over HTTPS.</p>
  final pulumi.Input<bool>? enforceHTTPS;
  /// <p>Specify the TLS security policy to apply to the HTTPS endpoint of the domain. The policy can be one of the following values:</p> <ul> <li> <p> <b>Policy-Min-TLS-1-0-2019-07:</b> TLS security policy that supports TLS version 1.0 to TLS version 1.2</p> </li> <li> <p> <b>Policy-Min-TLS-1-2-2019-07:</b> TLS security policy that supports only TLS version 1.2</p> </li> <li> <p> <b>Policy-Min-TLS-1-2-PFS-2023-10:</b> TLS security policy that supports TLS version 1.2 to TLS version 1.3 with perfect forward secrecy cipher suites</p> </li> </ul>
  final pulumi.Input<TLSSecurityPolicyEnumValueResponse>? tlsSecurityPolicy;

  /// Creates a new [DomainEndpointOptionsResponse].
  /// [customEndpoint] <p>The fully qualified URL for the custom endpoint.</p>
  /// [customEndpointCertificateArn] <p>The ARN for your security certificate, managed in Amazon Web Services Certificate Manager (ACM).</p>
  /// [customEndpointEnabled] <p>Whether to enable a custom endpoint for the domain.</p>
  /// [enforceHTTPS] <p>True to require that all traffic to the domain arrive over HTTPS.</p>
  /// [tlsSecurityPolicy] <p>Specify the TLS security policy to apply to the HTTPS endpoint of the domain. The policy can be one of the following values:</p> <ul> <li> <p> <b>Policy-Min-TLS-1-0-2019-07:</b> TLS security policy that supports TLS version 1.0 to TLS version 1.2</p> </li> <li> <p> <b>Policy-Min-TLS-1-2-2019-07:</b> TLS security policy that supports only TLS version 1.2</p> </li> <li> <p> <b>Policy-Min-TLS-1-2-PFS-2023-10:</b> TLS security policy that supports TLS version 1.2 to TLS version 1.3 with perfect forward secrecy cipher suites</p> </li> </ul>
  DomainEndpointOptionsResponse({
    this.customEndpoint,
    this.customEndpointCertificateArn,
    this.customEndpointEnabled,
    this.enforceHTTPS,
    this.tlsSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEndpoint': ?customEndpoint,
      'customEndpointCertificateArn': ?customEndpointCertificateArn,
      'customEndpointEnabled': ?customEndpointEnabled,
      'enforceHTTPS': ?enforceHTTPS,
      'tlsSecurityPolicy': ?pulumi.Input.mapOptionalInputValue<TLSSecurityPolicyEnumValueResponse, Map<String, dynamic>>(tlsSecurityPolicy, (value) => value.toMap()),
    };
  }

  factory DomainEndpointOptionsResponse.fromMap(Map<String, dynamic> map) {
    return DomainEndpointOptionsResponse(
      customEndpoint: map['customEndpoint'] == null ? null : (map['customEndpoint']! as String).input(),
      customEndpointCertificateArn: map['customEndpointCertificateArn'] == null ? null : (map['customEndpointCertificateArn']! as String).input(),
      customEndpointEnabled: map['customEndpointEnabled'] == null ? null : (map['customEndpointEnabled']! as bool).input(),
      enforceHTTPS: map['enforceHTTPS'] == null ? null : (map['enforceHTTPS']! as bool).input(),
      tlsSecurityPolicy: map['tlsSecurityPolicy'] == null ? null : (TLSSecurityPolicyEnumValueResponse.fromMap((map['tlsSecurityPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

