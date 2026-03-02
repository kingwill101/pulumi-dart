// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain_redirect_request_header.dart';

class GetDomainsDomainRedirect {
  /// The IP address of the origin server corresponding to the domain name or the back-to-origin domain name of the server.
  final pulumi.Input<List<String>> backends;
  /// Connection timeout, Unit: seconds, value range: 5~120.
  final pulumi.Input<int> connectTimeout;
  /// Whether to enable forced HTTP back-to-origin. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final pulumi.Input<bool> focusHttpBackend;
  /// Open long connection, default true.
  final pulumi.Input<bool> keepalive;
  /// Number of long connections, default: `60`. range :60-1000.
  final pulumi.Input<int> keepaliveRequests;
  /// Long connection over time, default: `15`. Range: 1-60.
  final pulumi.Input<int> keepaliveTimeout;
  /// The load balancing algorithm used when returning to the source.
  final pulumi.Input<String> loadbalance;
  /// Read timeout duration. Unit: seconds, Value range: 5~1800.
  final pulumi.Input<int> readTimeout;
  /// The traffic tag field and value of the domain name, which is used to mark the traffic processed by WAF. the format of this parameter value is **[{" k ":"_key_"," v ":"_value_"}]**. where_key_represents the specified custom request header field, and_value_represents the value set for this field.By specifying the custom request header field and the corresponding value, when the access traffic of the domain name passes through WAF, WAF automatically adds the specified custom field value to the request header as the traffic mark, which is convenient for backend service statistics.Explain that if the custom header field already exists in the request, the system will overwrite the value of the custom field in the request with the set traffic tag value.
  final pulumi.Input<List<GetDomainsDomainRedirectRequestHeader>> requestHeaders;
  /// Back to Source Retry. default `true`, retry 3 times by default.
  final pulumi.Input<bool> retry;
  /// Whether to enable back-to-source SNI. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  final pulumi.Input<bool> sniEnabled;
  /// Sets the value of the custom SNI extension field. If this parameter is not set, the value of the **Host** field in the request header is used as the value of the SNI extension field by default.In general, you do not need to customize SNI unless your business has special configuration requirements. You want WAF to use SNI that is inconsistent with the actual request Host in the back-to-origin request (that is, the custom SNI set here).> This parameter is required only when **sni_enalbed** is set to **true** (indicating that back-to-source SNI is enabled).
  final pulumi.Input<String> sniHost;
  /// Write timeout duration. **Unit**: seconds, **Value range**:5~1800.
  final pulumi.Input<int> writeTimeout;

  /// Creates a new [GetDomainsDomainRedirect].
  /// [backends] The IP address of the origin server corresponding to the domain name or the back-to-origin domain name of the server.
  /// [connectTimeout] Connection timeout, Unit: seconds, value range: 5~120.
  /// [focusHttpBackend] Whether to enable forced HTTP back-to-origin. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  /// [keepalive] Open long connection, default true.
  /// [keepaliveRequests] Number of long connections, default: `60`. range :60-1000.
  /// [keepaliveTimeout] Long connection over time, default: `15`. Range: 1-60.
  /// [loadbalance] The load balancing algorithm used when returning to the source.
  /// [readTimeout] Read timeout duration. Unit: seconds, Value range: 5~1800.
  /// [requestHeaders] The traffic tag field and value of the domain name, which is used to mark the traffic processed by WAF. the format of this parameter value is **[{" k ":"_key_"," v ":"_value_"}]**. where_key_represents the specified custom request header field, and_value_represents the value set for this field.By specifying the custom request header field and the corresponding value, when the access traffic of the domain name passes through WAF, WAF automatically adds the specified custom field value to the request header as the traffic mark, which is convenient for backend service statistics.Explain that if the custom header field already exists in the request, the system will overwrite the value of the custom field in the request with the set traffic tag value.
  /// [retry] Back to Source Retry. default `true`, retry 3 times by default.
  /// [sniEnabled] Whether to enable back-to-source SNI. This parameter is used only if the value of **https_ports** is not empty (indicating that the domain name uses the HTTPS protocol).
  /// [sniHost] Sets the value of the custom SNI extension field. If this parameter is not set, the value of the **Host** field in the request header is used as the value of the SNI extension field by default.In general, you do not need to customize SNI unless your business has special configuration requirements. You want WAF to use SNI that is inconsistent with the actual request Host in the back-to-origin request (that is, the custom SNI set here).> This parameter is required only when **sni_enalbed** is set to **true** (indicating that back-to-source SNI is enabled).
  /// [writeTimeout] Write timeout duration. **Unit**: seconds, **Value range**:5~1800.
  GetDomainsDomainRedirect({
    required this.backends,
    required this.connectTimeout,
    required this.focusHttpBackend,
    required this.keepalive,
    required this.keepaliveRequests,
    required this.keepaliveTimeout,
    required this.loadbalance,
    required this.readTimeout,
    required this.requestHeaders,
    required this.retry,
    required this.sniEnabled,
    required this.sniHost,
    required this.writeTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': backends,
      'connectTimeout': connectTimeout,
      'focusHttpBackend': focusHttpBackend,
      'keepalive': keepalive,
      'keepaliveRequests': keepaliveRequests,
      'keepaliveTimeout': keepaliveTimeout,
      'loadbalance': loadbalance,
      'readTimeout': readTimeout,
      'requestHeaders': pulumi.Input.mapInputValue<List<GetDomainsDomainRedirectRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<GetDomainsDomainRedirectRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retry': retry,
      'sniEnabled': sniEnabled,
      'sniHost': sniHost,
      'writeTimeout': writeTimeout,
    };
  }

  factory GetDomainsDomainRedirect.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainRedirect(
      backends: ((map['backends'] as List).cast<String>()).input(),
      connectTimeout: (map['connectTimeout'] as int).input(),
      focusHttpBackend: (map['focusHttpBackend'] as bool).input(),
      keepalive: (map['keepalive'] as bool).input(),
      keepaliveRequests: (map['keepaliveRequests'] as int).input(),
      keepaliveTimeout: (map['keepaliveTimeout'] as int).input(),
      loadbalance: (map['loadbalance'] as String).input(),
      readTimeout: (map['readTimeout'] as int).input(),
      requestHeaders: (pulumi.Input.decodeList<GetDomainsDomainRedirectRequestHeader>(map['requestHeaders'], (value) => GetDomainsDomainRedirectRequestHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      retry: (map['retry'] as bool).input(),
      sniEnabled: (map['sniEnabled'] as bool).input(),
      sniHost: (map['sniHost'] as String).input(),
      writeTimeout: (map['writeTimeout'] as int).input(),
    );
  }
}

