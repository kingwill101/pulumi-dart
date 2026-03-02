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
      dnsOptions: map['dnsOptions'] == null ? null : (pulumi.Input.decodeList<V3FunctionCustomDnsDnsOption>(map['dnsOptions']!, (value) => V3FunctionCustomDnsDnsOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nameServers: map['nameServers'] == null ? null : ((map['nameServers']! as List).cast<String>()).input(),
      searches: map['searches'] == null ? null : ((map['searches']! as List).cast<String>()).input(),
    );
  }
}

