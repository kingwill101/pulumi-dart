// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_function_custom_dns_dns_option.dart';

class V3FunctionCustomDns {
  /// List of configuration items in the resolv.conf file. Each item corresponds to a key-value pair in the format of key:value, where the key is required. See `dns_options` below.
  final pulumi.Input<List<V3FunctionCustomDnsDnsOption>>? dnsOptions;
  /// IP Address List of DNS servers
  final pulumi.Input<List<String>>? nameServers;
  /// DNS search domain list
  final pulumi.Input<List<String>>? searches;

  /// Creates a new [V3FunctionCustomDns].
  /// [dnsOptions] List of configuration items in the resolv.conf file. Each item corresponds to a key-value pair in the format of key:value, where the key is required. See `dns_options` below.
  /// [nameServers] IP Address List of DNS servers
  /// [searches] DNS search domain list
  V3FunctionCustomDns({
    this.dnsOptions,
    this.nameServers,
    this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsOptions': ?pulumi.Input.mapOptionalInputValue<List<V3FunctionCustomDnsDnsOption>, List<Map<String, dynamic>>>(dnsOptions, (value) => pulumi.Input.encodeList<V3FunctionCustomDnsDnsOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameServers': ?nameServers,
      'searches': ?searches,
    };
  }

  factory V3FunctionCustomDns.fromMap(Map<String, dynamic> map) {
    return V3FunctionCustomDns(
      dnsOptions: (() { final guardedValue = map['dnsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V3FunctionCustomDnsDnsOption>(guardedValue, (value) => V3FunctionCustomDnsDnsOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      searches: (() { final guardedValue = map['searches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

