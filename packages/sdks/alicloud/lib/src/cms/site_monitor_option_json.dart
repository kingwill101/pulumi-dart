// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_monitor_option_json_assertion.dart';

class SiteMonitorOptionJson {
  /// Assertion configuration group. See `assertions` below.
  final List<SiteMonitorOptionJsonAssertion>? assertions;
  /// Number of retries after DNS failed.
  final int? attempts;
  /// The Cookie that sends the HTTP request.
  final String? cookie;
  /// Whether to enable automatic MTR network diagnosis after a task failure. Value:
  /// - false: does not enable automatic MTR network diagnosis.
  /// - true to turn on automatic MTR network diagnostics.
  final bool? diagnosisMtr;
  /// Whether to enable the automatic PING network delay detection after the task fails. Value:
  /// - false: does not enable automatic PING network delay detection.
  /// - true: Enable automatic PING network delay detection.
  final bool? diagnosisPing;
  /// List of DNS hijacking configurations.
  final String? dnsHijackWhitelist;
  /// Matching Rules for DNS. Value:
  /// - IN_DNS: The alias or IP address that is expected to be resolved is in the DNS response.
  /// - DNS_IN: All DNS responses appear in the alias or IP address that is expected to be resolved.
  /// - EQUAL: the DNS response is exactly the same as the alias or IP address that is expected to be resolved.
  /// - ANY:DNS response and the alias or IP address expected to be resolved have an intersection.
  final String? dnsMatchRule;
  /// The IP address of the DNS server.
  ///
  /// > **NOTE:**  only applicable to DNS probe types.
  final String? dnsServer;
  /// DNS resolution type. Only applicable to DNS probe types. Value:
  /// - A (default): specifies the IP address corresponding to the host name or domain name.
  /// - CNAME: maps multiple domain names to another domain name.
  /// - NS: specifies that the domain name is resolved by a DNS server.
  /// - MX: point domain name to a mail server address.
  /// - TXT: Description of host name or domain name. The text length is limited to 512 bytes, which is usually used as SPF(Sender Policy Framework) record, that is, anti-spam.
  final String? dnsType;
  /// The alias or address to be resolved.
  ///
  /// > **NOTE:**  This parameter applies only to DNS probe types.
  final String? expectValue;
  /// Packet loss rate.
  ///
  /// > **NOTE:**  This parameter only applies to PING probe types.
  final String? failureRate;
  /// HTTP request header.
  final String? header;
  /// HTTP request method. Value:
  /// - get
  /// - post
  /// - head
  final String? httpMethod;
  /// Whether the parameter' Password' is Base64 encoded.
  /// - true: Yes.
  /// - false: No.
  final bool? isBaseEncode;
  /// Whether alarm rules are included. Value:
  /// - 0: Yes.
  /// - 1: No.
  final int? matchRule;
  /// Minimum TLS version. By default, TLS1.2 and later versions are supported. TLS1.0 and 1.1 have been disabled. If they still need to be supported, the configuration can be changed.
  final String? minTlsVersion;
  /// The password of the SMTP, POP3, or FTP probe type.
  final String? password;
  /// The heartbeat of the PING probe type.
  final int? pingNum;
  /// PING the port. Applies to TCP PING.
  final int? pingPort;
  /// The PING protocol type. Value:
  /// - icmp
  /// - tcp
  /// - udp
  final String? pingType;
  /// Ports of TCP, UDP, SMTP, and POP3 probe types.
  final int? port;
  /// The request content of the HTTP probe type.
  final String? requestContent;
  /// HTTP request content format. Value:
  /// - hex: hexadecimal format.
  /// - text: text format.
  final String? requestFormat;
  /// Match the response content.
  final String? responseContent;
  /// HTTP response content format. Value:
  /// - hex: hexadecimal format.
  /// - text: text format.
  final String? responseFormat;
  /// Timeout time. Unit: milliseconds.
  final int? timeout;
  /// The username of FTP, SMTP, or pop3.
  final String? userName;

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
      'assertions': ?assertions == null ? null : pulumi.Input.encodeList<SiteMonitorOptionJsonAssertion, Map<String, dynamic>>(assertions!, (value) => value.toMap()),
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
      assertions: map['assertions'] == null ? null : pulumi.Input.decodeList<SiteMonitorOptionJsonAssertion>(map['assertions'], (value) => SiteMonitorOptionJsonAssertion.fromMap((value as Map).cast<String, dynamic>())),
      attempts: map['attempts'] == null ? null : map['attempts'] as int,
      cookie: map['cookie'] == null ? null : map['cookie'] as String,
      diagnosisMtr: map['diagnosisMtr'] == null ? null : map['diagnosisMtr'] as bool,
      diagnosisPing: map['diagnosisPing'] == null ? null : map['diagnosisPing'] as bool,
      dnsHijackWhitelist: map['dnsHijackWhitelist'] == null ? null : map['dnsHijackWhitelist'] as String,
      dnsMatchRule: map['dnsMatchRule'] == null ? null : map['dnsMatchRule'] as String,
      dnsServer: map['dnsServer'] == null ? null : map['dnsServer'] as String,
      dnsType: map['dnsType'] == null ? null : map['dnsType'] as String,
      expectValue: map['expectValue'] == null ? null : map['expectValue'] as String,
      failureRate: map['failureRate'] == null ? null : map['failureRate'] as String,
      header: map['header'] == null ? null : map['header'] as String,
      httpMethod: map['httpMethod'] == null ? null : map['httpMethod'] as String,
      isBaseEncode: map['isBaseEncode'] == null ? null : map['isBaseEncode'] as bool,
      matchRule: map['matchRule'] == null ? null : map['matchRule'] as int,
      minTlsVersion: map['minTlsVersion'] == null ? null : map['minTlsVersion'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      pingNum: map['pingNum'] == null ? null : map['pingNum'] as int,
      pingPort: map['pingPort'] == null ? null : map['pingPort'] as int,
      pingType: map['pingType'] == null ? null : map['pingType'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      requestContent: map['requestContent'] == null ? null : map['requestContent'] as String,
      requestFormat: map['requestFormat'] == null ? null : map['requestFormat'] as String,
      responseContent: map['responseContent'] == null ? null : map['responseContent'] as String,
      responseFormat: map['responseFormat'] == null ? null : map['responseFormat'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

