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
  /// Sets the value of the custom SNI extension field. If this parameter is not set, the value of the **Host** field in the request header is used as the value of the SNI extension field by default.In general, you do not need to customize SNI unless your business has special configuration requirements. You want WAF to use SNI that is inconsistent with the actual request Host in the back-to-origin request (that is, the custom SNI set here).&gt; This parameter is required only when **sni_enalbed** is set to **true** (indicating that back-to-source SNI is enabled).
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
  /// [sniHost] Sets the value of the custom SNI extension field. If this parameter is not set, the value of the **Host** field in the request header is used as the value of the SNI extension field by default.In general, you do not need to customize SNI unless your business has special configuration requirements. You want WAF to use SNI that is inconsistent with the actual request Host in the back-to-origin request (that is, the custom SNI set here).&gt; This parameter is required only when **sni_enalbed** is set to **true** (indicating that back-to-source SNI is enabled).
  /// [writeTimeout] Write timeout duration. **Unit**: seconds, **Value range**:5~1800.
  const GetDomainsDomainRedirect({
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
      backends: pulumi.Input.fromValue((map['backends'] as List).cast<String>()),
      connectTimeout: pulumi.Input.fromValue(map['connectTimeout'] as int),
      focusHttpBackend: pulumi.Input.fromValue(map['focusHttpBackend'] as bool),
      keepalive: pulumi.Input.fromValue(map['keepalive'] as bool),
      keepaliveRequests: pulumi.Input.fromValue(map['keepaliveRequests'] as int),
      keepaliveTimeout: pulumi.Input.fromValue(map['keepaliveTimeout'] as int),
      loadbalance: pulumi.Input.fromValue(map['loadbalance'] as String),
      readTimeout: pulumi.Input.fromValue(map['readTimeout'] as int),
      requestHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainsDomainRedirectRequestHeader>(map['requestHeaders']!, (value) => GetDomainsDomainRedirectRequestHeader.fromMap((value as Map).cast<String, dynamic>()))),
      retry: pulumi.Input.fromValue(map['retry'] as bool),
      sniEnabled: pulumi.Input.fromValue(map['sniEnabled'] as bool),
      sniHost: pulumi.Input.fromValue(map['sniHost'] as String),
      writeTimeout: pulumi.Input.fromValue(map['writeTimeout'] as int),
    );
  }
}

