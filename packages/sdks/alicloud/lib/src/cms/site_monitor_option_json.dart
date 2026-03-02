// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_monitor_option_json_assertion.dart';

class SiteMonitorOptionJson {
  /// Assertion configuration group. See `assertions` below.
  final pulumi.Input<List<SiteMonitorOptionJsonAssertion>>? assertions;
  /// Number of retries after DNS failed.
  final pulumi.Input<int>? attempts;
  /// The Cookie that sends the HTTP request.
  final pulumi.Input<String>? cookie;
  /// Whether to enable automatic MTR network diagnosis after a task failure. Value:
  /// - false: does not enable automatic MTR network diagnosis.
  /// - true to turn on automatic MTR network diagnostics.
  final pulumi.Input<bool>? diagnosisMtr;
  /// Whether to enable the automatic PING network delay detection after the task fails. Value:
  /// - false: does not enable automatic PING network delay detection.
  /// - true: Enable automatic PING network delay detection.
  final pulumi.Input<bool>? diagnosisPing;
  /// List of DNS hijacking configurations.
  final pulumi.Input<String>? dnsHijackWhitelist;
  /// Matching Rules for DNS. Value:
  /// - IN_DNS: The alias or IP address that is expected to be resolved is in the DNS response.
  /// - DNS_IN: All DNS responses appear in the alias or IP address that is expected to be resolved.
  /// - EQUAL: the DNS response is exactly the same as the alias or IP address that is expected to be resolved.
  /// - ANY:DNS response and the alias or IP address expected to be resolved have an intersection.
  final pulumi.Input<String>? dnsMatchRule;
  /// The IP address of the DNS server.
  ///
  /// > **NOTE:**  only applicable to DNS probe types.
  final pulumi.Input<String>? dnsServer;
  /// DNS resolution type. Only applicable to DNS probe types. Value:
  /// - A (default): specifies the IP address corresponding to the host name or domain name.
  /// - CNAME: maps multiple domain names to another domain name.
  /// - NS: specifies that the domain name is resolved by a DNS server.
  /// - MX: point domain name to a mail server address.
  /// - TXT: Description of host name or domain name. The text length is limited to 512 bytes, which is usually used as SPF(Sender Policy Framework) record, that is, anti-spam.
  final pulumi.Input<String>? dnsType;
  /// The alias or address to be resolved.
  ///
  /// > **NOTE:**  This parameter applies only to DNS probe types.
  final pulumi.Input<String>? expectValue;
  /// Packet loss rate.
  ///
  /// > **NOTE:**  This parameter only applies to PING probe types.
  final pulumi.Input<String>? failureRate;
  /// HTTP request header.
  final pulumi.Input<String>? header;
  /// HTTP request method. Value:
  /// - get
  /// - post
  /// - head
  final pulumi.Input<String>? httpMethod;
  /// Whether the parameter' Password' is Base64 encoded.
  /// - true: Yes.
  /// - false: No.
  final pulumi.Input<bool>? isBaseEncode;
  /// Whether alarm rules are included. Value:
  /// - 0: Yes.
  /// - 1: No.
  final pulumi.Input<int>? matchRule;
  /// Minimum TLS version. By default, TLS1.2 and later versions are supported. TLS1.0 and 1.1 have been disabled. If they still need to be supported, the configuration can be changed.
  final pulumi.Input<String>? minTlsVersion;
  /// The password of the SMTP, POP3, or FTP probe type.
  final pulumi.Input<String>? password;
  /// The heartbeat of the PING probe type.
  final pulumi.Input<int>? pingNum;
  /// PING the port. Applies to TCP PING.
  final pulumi.Input<int>? pingPort;
  /// The PING protocol type. Value:
  /// - icmp
  /// - tcp
  /// - udp
  final pulumi.Input<String>? pingType;
  /// Ports of TCP, UDP, SMTP, and POP3 probe types.
  final pulumi.Input<int>? port;
  /// The request content of the HTTP probe type.
  final pulumi.Input<String>? requestContent;
  /// HTTP request content format. Value:
  /// - hex: hexadecimal format.
  /// - text: text format.
  final pulumi.Input<String>? requestFormat;
  /// Match the response content.
  final pulumi.Input<String>? responseContent;
  /// HTTP response content format. Value:
  /// - hex: hexadecimal format.
  /// - text: text format.
  final pulumi.Input<String>? responseFormat;
  /// Timeout time. Unit: milliseconds.
  final pulumi.Input<int>? timeout;
  /// The username of FTP, SMTP, or pop3.
  final pulumi.Input<String>? userName;

  /// Creates a new [SiteMonitorOptionJson].
  /// [assertions] Assertion configuration group. See `assertions` below.
  /// [attempts] Number of retries after DNS failed.
  /// [cookie] The Cookie that sends the HTTP request.
  /// [diagnosisMtr] Whether to enable automatic MTR network diagnosis after a task failure. Value:
  /// [diagnosisPing] Whether to enable the automatic PING network delay detection after the task fails. Value:
  /// [dnsHijackWhitelist] List of DNS hijacking configurations.
  /// [dnsMatchRule] Matching Rules for DNS. Value:
  /// [dnsServer] The IP address of the DNS server.
  /// [dnsType] DNS resolution type. Only applicable to DNS probe types. Value:
  /// [expectValue] The alias or address to be resolved.
  /// [failureRate] Packet loss rate.
  /// [header] HTTP request header.
  /// [httpMethod] HTTP request method. Value:
  /// [isBaseEncode] Whether the parameter' Password' is Base64 encoded.
  /// [matchRule] Whether alarm rules are included. Value:
  /// [minTlsVersion] Minimum TLS version. By default, TLS1.2 and later versions are supported. TLS1.0 and 1.1 have been disabled. If they still need to be supported, the configuration can be changed.
  /// [password] The password of the SMTP, POP3, or FTP probe type.
  /// [pingNum] The heartbeat of the PING probe type.
  /// [pingPort] PING the port. Applies to TCP PING.
  /// [pingType] The PING protocol type. Value:
  /// [port] Ports of TCP, UDP, SMTP, and POP3 probe types.
  /// [requestContent] The request content of the HTTP probe type.
  /// [requestFormat] HTTP request content format. Value:
  /// [responseContent] Match the response content.
  /// [responseFormat] HTTP response content format. Value:
  /// [timeout] Timeout time. Unit: milliseconds.
  /// [userName] The username of FTP, SMTP, or pop3.
  SiteMonitorOptionJson({
    this.assertions,
    this.attempts,
    this.cookie,
    this.diagnosisMtr,
    this.diagnosisPing,
    this.dnsHijackWhitelist,
    this.dnsMatchRule,
    this.dnsServer,
    this.dnsType,
    this.expectValue,
    this.failureRate,
    this.header,
    this.httpMethod,
    this.isBaseEncode,
    this.matchRule,
    this.minTlsVersion,
    this.password,
    this.pingNum,
    this.pingPort,
    this.pingType,
    this.port,
    this.requestContent,
    this.requestFormat,
    this.responseContent,
    this.responseFormat,
    this.timeout,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertions': ?pulumi.Input.mapOptionalInputValue<List<SiteMonitorOptionJsonAssertion>, List<Map<String, dynamic>>>(assertions, (value) => pulumi.Input.encodeList<SiteMonitorOptionJsonAssertion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attempts': ?attempts,
      'cookie': ?cookie,
      'diagnosisMtr': ?diagnosisMtr,
      'diagnosisPing': ?diagnosisPing,
      'dnsHijackWhitelist': ?dnsHijackWhitelist,
      'dnsMatchRule': ?dnsMatchRule,
      'dnsServer': ?dnsServer,
      'dnsType': ?dnsType,
      'expectValue': ?expectValue,
      'failureRate': ?failureRate,
      'header': ?header,
      'httpMethod': ?httpMethod,
      'isBaseEncode': ?isBaseEncode,
      'matchRule': ?matchRule,
      'minTlsVersion': ?minTlsVersion,
      'password': ?password,
      'pingNum': ?pingNum,
      'pingPort': ?pingPort,
      'pingType': ?pingType,
      'port': ?port,
      'requestContent': ?requestContent,
      'requestFormat': ?requestFormat,
      'responseContent': ?responseContent,
      'responseFormat': ?responseFormat,
      'timeout': ?timeout,
      'userName': ?userName,
    };
  }

  factory SiteMonitorOptionJson.fromMap(Map<String, dynamic> map) {
    return SiteMonitorOptionJson(
      assertions: map['assertions'] == null ? null : (pulumi.Input.decodeList<SiteMonitorOptionJsonAssertion>(map['assertions'], (value) => SiteMonitorOptionJsonAssertion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      attempts: map['attempts'] == null ? null : (map['attempts'] as int).input(),
      cookie: map['cookie'] == null ? null : (map['cookie'] as String).input(),
      diagnosisMtr: map['diagnosisMtr'] == null ? null : (map['diagnosisMtr'] as bool).input(),
      diagnosisPing: map['diagnosisPing'] == null ? null : (map['diagnosisPing'] as bool).input(),
      dnsHijackWhitelist: map['dnsHijackWhitelist'] == null ? null : (map['dnsHijackWhitelist'] as String).input(),
      dnsMatchRule: map['dnsMatchRule'] == null ? null : (map['dnsMatchRule'] as String).input(),
      dnsServer: map['dnsServer'] == null ? null : (map['dnsServer'] as String).input(),
      dnsType: map['dnsType'] == null ? null : (map['dnsType'] as String).input(),
      expectValue: map['expectValue'] == null ? null : (map['expectValue'] as String).input(),
      failureRate: map['failureRate'] == null ? null : (map['failureRate'] as String).input(),
      header: map['header'] == null ? null : (map['header'] as String).input(),
      httpMethod: map['httpMethod'] == null ? null : (map['httpMethod'] as String).input(),
      isBaseEncode: map['isBaseEncode'] == null ? null : (map['isBaseEncode'] as bool).input(),
      matchRule: map['matchRule'] == null ? null : (map['matchRule'] as int).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      pingNum: map['pingNum'] == null ? null : (map['pingNum'] as int).input(),
      pingPort: map['pingPort'] == null ? null : (map['pingPort'] as int).input(),
      pingType: map['pingType'] == null ? null : (map['pingType'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      requestContent: map['requestContent'] == null ? null : (map['requestContent'] as String).input(),
      requestFormat: map['requestFormat'] == null ? null : (map['requestFormat'] as String).input(),
      responseContent: map['responseContent'] == null ? null : (map['responseContent'] as String).input(),
      responseFormat: map['responseFormat'] == null ? null : (map['responseFormat'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

