// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v3_functions_function_custom_dns_dns_option.dart';

class GetV3FunctionsFunctionCustomDns {
  /// List of configuration items in the resolv.conf file. Each item corresponds to a key-value pair in the format of key:value, where the key is required.
  final List<GetV3FunctionsFunctionCustomDnsDnsOption> dnsOptions;
  /// IP Address List of DNS servers.
  final List<String> nameServers;
  /// DNS search domain list.
  final List<String> searches;

  /// Creates a new [GetV3FunctionsFunctionCustomDns].
  /// [dnsOptions] List of configuration items in the resolv.conf file. Each item corresponds to a key-value pair in the format of key:value, where the key is required.
  /// [nameServers] IP Address List of DNS servers.
  /// [searches] DNS search domain list.
  GetV3FunctionsFunctionCustomDns({
    required this.dnsOptions,
    required this.nameServers,
    required this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsOptions': pulumi.Input.encodeList<GetV3FunctionsFunctionCustomDnsDnsOption, Map<String, dynamic>>(dnsOptions, (value) => value.toMap()),
      'nameServers': nameServers,
      'searches': searches,
    };
  }

  factory GetV3FunctionsFunctionCustomDns.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionCustomDns(
      dnsOptions: pulumi.Input.decodeList<GetV3FunctionsFunctionCustomDnsDnsOption>(map['dnsOptions'], (value) => GetV3FunctionsFunctionCustomDnsDnsOption.fromMap((value as Map).cast<String, dynamic>())),
      nameServers: (map['nameServers'] as List).cast<String>(),
      searches: (map['searches'] as List).cast<String>(),
    );
  }
}

