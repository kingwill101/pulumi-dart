// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_function_custom_dns_dns_option.dart';

class V2FunctionCustomDns {
  /// DNS resolver configuration parameter list. See `dns_options` below.
  final List<V2FunctionCustomDnsDnsOption>? dnsOptions;
  /// List of IP addresses of DNS servers.
  final List<String>? nameServers;
  /// List of DNS search domains.
  final List<String>? searches;

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
      'dnsOptions': ?dnsOptions == null ? null : pulumi.Input.encodeList<V2FunctionCustomDnsDnsOption, Map<String, dynamic>>(dnsOptions!, (value) => value.toMap()),
      'nameServers': ?nameServers,
      'searches': ?searches,
    };
  }

  factory V2FunctionCustomDns.fromMap(Map<String, dynamic> map) {
    return V2FunctionCustomDns(
      dnsOptions: map['dnsOptions'] == null ? null : pulumi.Input.decodeList<V2FunctionCustomDnsDnsOption>(map['dnsOptions'], (value) => V2FunctionCustomDnsDnsOption.fromMap((value as Map).cast<String, dynamic>())),
      nameServers: map['nameServers'] == null ? null : (map['nameServers'] as List).cast<String>(),
      searches: map['searches'] == null ? null : (map['searches'] as List).cast<String>(),
    );
  }
}

