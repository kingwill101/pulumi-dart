// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group_dns_config_option.dart';

class GetContainerGroupsGroupDnsConfig {
  /// The list of DNS server IP addresses.
  final pulumi.Input<List<String>> nameServers;
  /// The list of objects. Each object is a name-value pair. The value is optional.
  final pulumi.Input<List<GetContainerGroupsGroupDnsConfigOption>> options;
  /// The list of DNS lookup domains.
  final pulumi.Input<List<String>> searches;

  /// Creates a new [GetContainerGroupsGroupDnsConfig].
  /// [nameServers] The list of DNS server IP addresses.
  /// [options] The list of objects. Each object is a name-value pair. The value is optional.
  /// [searches] The list of DNS lookup domains.
  const GetContainerGroupsGroupDnsConfig({
    required this.nameServers,
    required this.options,
    required this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameServers': nameServers,
      'options': pulumi.Input.mapInputValue<List<GetContainerGroupsGroupDnsConfigOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<GetContainerGroupsGroupDnsConfigOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'searches': searches,
    };
  }

  factory GetContainerGroupsGroupDnsConfig.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupDnsConfig(
      nameServers: pulumi.Input.fromValue((map['nameServers'] as List).cast<String>()),
      options: pulumi.Input.fromValue(pulumi.Input.decodeList<GetContainerGroupsGroupDnsConfigOption>(map['options']!, (value) => GetContainerGroupsGroupDnsConfigOption.fromMap((value as Map).cast<String, dynamic>()))),
      searches: pulumi.Input.fromValue((map['searches'] as List).cast<String>()),
    );
  }
}

