// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_redirect_request_header.dart';

class DomainRedirect {
  /// The IP addresses or domain names of the origin server. You cannot specify both IP addresses and domain names. If you specify domain names, the domain names can be resolved only to IPv4 addresses.
  ///
  /// - If you specify IP addresses, specify the value in the **\["ip1","ip2",...]** format. You can enter up to 20 IP addresses.
  /// - If you specify domain names, specify the value in the **\["domain"]** format. You can enter up to 20 domain names.
  final pulumi.Input<List<String>>? backends;
  /// The secondary IP address or domain name of the origin server.
  final pulumi.Input<List<String>>? backupBackends;
  /// Connection timeout duration. Unit: seconds.
  /// Value range: 1~3600. Default value: 5.
  final pulumi.Input<int>? connectTimeout;
  /// Specifies whether to enable force redirect from HTTPS to HTTP for back-to-origin requests. This parameter is available only if you specify `HttpsPorts`. Valid values:
  final pulumi.Input<bool>? focusHttpBackend;
  /// Specifies whether to enable HTTP/2 for back-to-origin traffic. Valid values:
  final pulumi.Input<bool>? http2Origin;
  /// The maximum number of concurrent HTTP/2 back-to-origin requests. Valid values: `1` to `512`. Default value: `128`.
  final pulumi.Input<int>? http2OriginMaxConcurrency;
  /// Specifies whether to enable the persistent connection feature. Valid values:
  final pulumi.Input<bool>? keepalive;
  /// The number of reused persistent connections. Valid values: 60 to 1000. Default value: 1000
  ///
  ///
  /// > **NOTE:**   This parameter specifies the number of persistent connections that can be reused after you enable the persistent connection feature.
  final pulumi.Input<int>? keepaliveRequests;
  /// Idle long connection timeout, value range: 1~60, default 15, unit: seconds.
  ///
  /// > **NOTE:**  How long the multiplexed long connection is idle and then released.
  final pulumi.Input<int>? keepaliveTimeout;
  /// The load balancing algorithm that you want to use to forward requests to the origin server. Valid values:
  final pulumi.Input<String> loadbalance;
  /// The maximum size of a request body. Valid values: `2` to `10`. Default value: `2`. Unit: GB.
  /// > **NOTE:** This parameter is supported only by the Ultimate edition.
  final pulumi.Input<int>? maxBodySize;
  /// The timeout period of write connections. Unit: seconds. Valid values: 1 to 3600. Default value: 120.
  final pulumi.Input<int>? readTimeout;
  /// The traffic marking field and value of the domain name, which is used to mark the traffic processed by WAF.
  /// By specifying custom request header fields and corresponding values, when the access traffic of the domain name passes through WAF, WAF automatically adds the set custom field value to the request header as a traffic mark, which facilitates the statistics of back-end services. See `request_headers` below.
  final pulumi.Input<List<DomainRedirectRequestHeader>>? requestHeaders;
  /// Specifies whether WAF retries if WAF fails to forward requests to the origin server. Valid values:
  final pulumi.Input<bool>? retry;
  /// Specifies whether to enable the Server Name Indication (SNI) feature for back-to-origin requests. This parameter is available only if you specify `HttpsPorts`. Valid values:
  final pulumi.Input<bool>? sniEnabled;
  /// The custom value of the SNI field. If you do not specify this parameter, the value of the `Host` header field is automatically used. In most cases, you do not need to specify a custom value for the SNI field. However, if you want WAF to use an SNI field whose value is different from the value of the Host header field in back-to-origin requests, you can specify a custom value for the SNI field.
  ///
  /// > **NOTE:**   This parameter is required only if you set `SniEnabled` to true.
  final pulumi.Input<String>? sniHost;
  /// The timeout period of write connections. Unit: seconds. Valid values: 1 to 3600. Default value: 120.
  final pulumi.Input<int>? writeTimeout;
  /// Specifies whether to use the X-Forward-For-Proto header field to pass the protocol used by WAF to forward requests to the origin server. Valid values:
  final pulumi.Input<bool>? xffProto;

  /// Creates a new [DomainRedirect].
  /// [backends] The IP addresses or domain names of the origin server. You cannot specify both IP addresses and domain names. If you specify domain names, the domain names can be resolved only to IPv4 addresses.
  /// [backupBackends] The secondary IP address or domain name of the origin server.
  /// [connectTimeout] Connection timeout duration. Unit: seconds.
  /// [focusHttpBackend] Specifies whether to enable force redirect from HTTPS to HTTP for back-to-origin requests. This parameter is available only if you specify `HttpsPorts`. Valid values:
  /// [http2Origin] Specifies whether to enable HTTP/2 for back-to-origin traffic. Valid values:
  /// [http2OriginMaxConcurrency] The maximum number of concurrent HTTP/2 back-to-origin requests. Valid values: `1` to `512`. Default value: `128`.
  /// [keepalive] Specifies whether to enable the persistent connection feature. Valid values:
  /// [keepaliveRequests] The number of reused persistent connections. Valid values: 60 to 1000. Default value: 1000
  /// [keepaliveTimeout] Idle long connection timeout, value range: 1~60, default 15, unit: seconds.
  /// [loadbalance] The load balancing algorithm that you want to use to forward requests to the origin server. Valid values:
  /// [maxBodySize] The maximum size of a request body. Valid values: `2` to `10`. Default value: `2`. Unit: GB.
  /// [readTimeout] The timeout period of write connections. Unit: seconds. Valid values: 1 to 3600. Default value: 120.
  /// [requestHeaders] The traffic marking field and value of the domain name, which is used to mark the traffic processed by WAF.
  /// [retry] Specifies whether WAF retries if WAF fails to forward requests to the origin server. Valid values:
  /// [sniEnabled] Specifies whether to enable the Server Name Indication (SNI) feature for back-to-origin requests. This parameter is available only if you specify `HttpsPorts`. Valid values:
  /// [sniHost] The custom value of the SNI field. If you do not specify this parameter, the value of the `Host` header field is automatically used. In most cases, you do not need to specify a custom value for the SNI field. However, if you want WAF to use an SNI field whose value is different from the value of the Host header field in back-to-origin requests, you can specify a custom value for the SNI field.
  /// [writeTimeout] The timeout period of write connections. Unit: seconds. Valid values: 1 to 3600. Default value: 120.
  /// [xffProto] Specifies whether to use the X-Forward-For-Proto header field to pass the protocol used by WAF to forward requests to the origin server. Valid values:
  DomainRedirect({
    this.backends,
    this.backupBackends,
    this.connectTimeout,
    this.focusHttpBackend,
    this.http2Origin,
    this.http2OriginMaxConcurrency,
    this.keepalive,
    this.keepaliveRequests,
    this.keepaliveTimeout,
    required this.loadbalance,
    this.maxBodySize,
    this.readTimeout,
    this.requestHeaders,
    this.retry,
    this.sniEnabled,
    this.sniHost,
    this.writeTimeout,
    this.xffProto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': ?backends,
      'backupBackends': ?backupBackends,
      'connectTimeout': ?connectTimeout,
      'focusHttpBackend': ?focusHttpBackend,
      'http2Origin': ?http2Origin,
      'http2OriginMaxConcurrency': ?http2OriginMaxConcurrency,
      'keepalive': ?keepalive,
      'keepaliveRequests': ?keepaliveRequests,
      'keepaliveTimeout': ?keepaliveTimeout,
      'loadbalance': loadbalance,
      'maxBodySize': ?maxBodySize,
      'readTimeout': ?readTimeout,
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<DomainRedirectRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<DomainRedirectRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retry': ?retry,
      'sniEnabled': ?sniEnabled,
      'sniHost': ?sniHost,
      'writeTimeout': ?writeTimeout,
      'xffProto': ?xffProto,
    };
  }

  factory DomainRedirect.fromMap(Map<String, dynamic> map) {
    return DomainRedirect(
      backends: map['backends'] == null ? null : ((map['backends'] as List).cast<String>()).input(),
      backupBackends: map['backupBackends'] == null ? null : ((map['backupBackends'] as List).cast<String>()).input(),
      connectTimeout: map['connectTimeout'] == null ? null : (map['connectTimeout'] as int).input(),
      focusHttpBackend: map['focusHttpBackend'] == null ? null : (map['focusHttpBackend'] as bool).input(),
      http2Origin: map['http2Origin'] == null ? null : (map['http2Origin'] as bool).input(),
      http2OriginMaxConcurrency: map['http2OriginMaxConcurrency'] == null ? null : (map['http2OriginMaxConcurrency'] as int).input(),
      keepalive: map['keepalive'] == null ? null : (map['keepalive'] as bool).input(),
      keepaliveRequests: map['keepaliveRequests'] == null ? null : (map['keepaliveRequests'] as int).input(),
      keepaliveTimeout: map['keepaliveTimeout'] == null ? null : (map['keepaliveTimeout'] as int).input(),
      loadbalance: (map['loadbalance'] as String).input(),
      maxBodySize: map['maxBodySize'] == null ? null : (map['maxBodySize'] as int).input(),
      readTimeout: map['readTimeout'] == null ? null : (map['readTimeout'] as int).input(),
      requestHeaders: map['requestHeaders'] == null ? null : (pulumi.Input.decodeList<DomainRedirectRequestHeader>(map['requestHeaders'], (value) => DomainRedirectRequestHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      retry: map['retry'] == null ? null : (map['retry'] as bool).input(),
      sniEnabled: map['sniEnabled'] == null ? null : (map['sniEnabled'] as bool).input(),
      sniHost: map['sniHost'] == null ? null : (map['sniHost'] as String).input(),
      writeTimeout: map['writeTimeout'] == null ? null : (map['writeTimeout'] as int).input(),
      xffProto: map['xffProto'] == null ? null : (map['xffProto'] as bool).input(),
    );
  }
}

