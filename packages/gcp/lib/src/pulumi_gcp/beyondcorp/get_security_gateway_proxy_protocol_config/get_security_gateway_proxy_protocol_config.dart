// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_gateway_proxy_protocol_config_contextual_header/get_security_gateway_proxy_protocol_config_contextual_header.dart';

class GetSecurityGatewayProxyProtocolConfig {
  /// The configuration for the proxy.
  final List<String> allowedClientHeaders;

  /// Client IP configuration. The client IP address is included if true.
  final bool clientIp;

  /// Configuration for the contextual headers.
  final List<GetSecurityGatewayProxyProtocolConfigContextualHeader>
      contextualHeaders;

  /// Gateway identity configuration. Possible values: ["RESOURCE_NAME"]
  final String gatewayIdentity;

  /// Custom resource specific headers along with the values.
  /// The names should conform to RFC 9110:
  /// > Field names SHOULD constrain themselves to alphanumeric characters, "-",
  /// and ".", and SHOULD begin with a letter.
  /// > Field values SHOULD contain only ASCII printable characters and tab.
  final Map<String, String> metadataHeaders;

  GetSecurityGatewayProxyProtocolConfig({
    required this.allowedClientHeaders,
    required this.clientIp,
    required this.contextualHeaders,
    required this.gatewayIdentity,
    required this.metadataHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedClientHeaders'] = allowedClientHeaders;
    map['clientIp'] = clientIp;
    map['contextualHeaders'] = Input.encodeList<
        GetSecurityGatewayProxyProtocolConfigContextualHeader,
        Map<String, dynamic>>(contextualHeaders, (value) => value.toMap());
    map['gatewayIdentity'] = gatewayIdentity;
    map['metadataHeaders'] = metadataHeaders;
    return map;
  }

  factory GetSecurityGatewayProxyProtocolConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfig(
      allowedClientHeaders:
          (map['allowedClientHeaders'] as List).cast<String>(),
      clientIp: map['clientIp'] as bool,
      contextualHeaders: Input.decodeList<
              GetSecurityGatewayProxyProtocolConfigContextualHeader>(
          map['contextualHeaders'],
          (value) =>
              GetSecurityGatewayProxyProtocolConfigContextualHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gatewayIdentity: map['gatewayIdentity'] as String,
      metadataHeaders: (map['metadataHeaders'] as Map).cast<String, String>(),
    );
  }
}
