// ignore_for_file: unused_element, unnecessary_cast

import 'security_gateway_application_upstream_proxy_protocol_contextual_headers.dart';

class SecurityGatewayApplicationUpstreamProxyProtocol {
  /// The configuration for the proxy.
  final List<String>? allowedClientHeaders;

  /// Client IP configuration. The client IP address is included if true.
  final bool? clientIp;

  /// Configuration for the contextual headers.
  /// Structure is documented below.
  final SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders?
      contextualHeaders;

  /// Gateway identity configuration.
  /// Possible values are: `RESOURCE_NAME`.
  final String? gatewayIdentity;

  /// Custom resource specific headers along with the values.
  /// The names should conform to RFC 9110:
  /// > Field names SHOULD constrain themselves to alphanumeric characters, "-",
  /// and ".", and SHOULD begin with a letter.
  /// > Field values SHOULD contain only ASCII printable characters and tab.
  final Map<String, String>? metadataHeaders;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocol].
  /// [allowedClientHeaders] The configuration for the proxy.
  /// [clientIp] Client IP configuration. The client IP address is included if true.
  /// [contextualHeaders] Configuration for the contextual headers.
  /// [gatewayIdentity] Gateway identity configuration.
  /// [metadataHeaders] Custom resource specific headers along with the values.
  SecurityGatewayApplicationUpstreamProxyProtocol({
    this.allowedClientHeaders,
    this.clientIp,
    this.contextualHeaders,
    this.gatewayIdentity,
    this.metadataHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedClientHeadersValue = allowedClientHeaders;
    if (allowedClientHeadersValue != null) {
      map['allowedClientHeaders'] = allowedClientHeadersValue;
    }
    final clientIpValue = clientIp;
    if (clientIpValue != null) {
      map['clientIp'] = clientIpValue;
    }
    final contextualHeadersValue = contextualHeaders;
    if (contextualHeadersValue != null) {
      map['contextualHeaders'] = contextualHeadersValue.toMap();
    }
    final gatewayIdentityValue = gatewayIdentity;
    if (gatewayIdentityValue != null) {
      map['gatewayIdentity'] = gatewayIdentityValue;
    }
    final metadataHeadersValue = metadataHeaders;
    if (metadataHeadersValue != null) {
      map['metadataHeaders'] = metadataHeadersValue;
    }
    return map;
  }

  factory SecurityGatewayApplicationUpstreamProxyProtocol.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamProxyProtocol(
      allowedClientHeaders: map['allowedClientHeaders'] == null
          ? null
          : (map['allowedClientHeaders'] as List).cast<String>(),
      clientIp: map['clientIp'] == null ? null : map['clientIp'] as bool,
      contextualHeaders: map['contextualHeaders'] == null
          ? null
          : SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders
              .fromMap(
                  (map['contextualHeaders'] as Map).cast<String, dynamic>()),
      gatewayIdentity: map['gatewayIdentity'] == null
          ? null
          : map['gatewayIdentity'] as String,
      metadataHeaders: map['metadataHeaders'] == null
          ? null
          : (map['metadataHeaders'] as Map).cast<String, String>(),
    );
  }
}
