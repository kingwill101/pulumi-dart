// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_function_custom_dns_dns_option.dart';

class V2FunctionCustomDns {
  /// DNS resolver configuration parameter list. See `dns_options` below.
  final pulumi.Input<List<V2FunctionCustomDnsDnsOption>>? dnsOptions;
  /// List of IP addresses of DNS servers.
  final pulumi.Input<List<String>>? nameServers;
  /// List of DNS search domains.
  final pulumi.Input<List<String>>? searches;

  /// Creates a new [V2FunctionCustomDns].
  /// [dnsOptions] DNS resolver configuration parameter list. See `dns_options` below.
  /// [nameServers] List of IP addresses of DNS servers.
  /// [searches] List of DNS search domains.
  V2FunctionCustomDns({
    this.dnsOptions,
    this.nameServers,
    this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsOptions': ?pulumi.Input.mapOptionalInputValue<List<V2FunctionCustomDnsDnsOption>, List<Map<String, dynamic>>>(dnsOptions, (value) => pulumi.Input.encodeList<V2FunctionCustomDnsDnsOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameServers': ?nameServers,
      'searches': ?searches,
    };
  }

  factory V2FunctionCustomDns.fromMap(Map<String, dynamic> map) {
    return V2FunctionCustomDns(
      dnsOptions: (() { final guardedValue = map['dnsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2FunctionCustomDnsDnsOption>(guardedValue, (value) => V2FunctionCustomDnsDnsOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      searches: (() { final guardedValue = map['searches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

