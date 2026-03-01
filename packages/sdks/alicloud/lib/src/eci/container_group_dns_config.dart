// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_dns_config_option.dart';

class ContainerGroupDnsConfig {
  /// The list of DNS server IP addresses.
  final List<String>? nameServers;
  /// The structure of options. See `options` below.
  final List<ContainerGroupDnsConfigOption>? options;
  /// The list of DNS lookup domains.
  final List<String>? searches;

  /// Creates a new [ContainerGroupDnsConfig].
  /// [nameServers] The list of DNS server IP addresses.
  /// [options] The structure of options. See `options` below.
  /// [searches] The list of DNS lookup domains.
  ContainerGroupDnsConfig({
    this.nameServers,
    this.options,
    this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameServers': ?nameServers,
      'options': ?options == null ? null : pulumi.Input.encodeList<ContainerGroupDnsConfigOption, Map<String, dynamic>>(options!, (value) => value.toMap()),
      'searches': ?searches,
    };
  }

  factory ContainerGroupDnsConfig.fromMap(Map<String, dynamic> map) {
    return ContainerGroupDnsConfig(
      nameServers: map['nameServers'] == null ? null : (map['nameServers'] as List).cast<String>(),
      options: map['options'] == null ? null : pulumi.Input.decodeList<ContainerGroupDnsConfigOption>(map['options'], (value) => ContainerGroupDnsConfigOption.fromMap((value as Map).cast<String, dynamic>())),
      searches: map['searches'] == null ? null : (map['searches'] as List).cast<String>(),
    );
  }
}

