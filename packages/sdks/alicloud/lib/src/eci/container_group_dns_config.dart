// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_dns_config_option.dart';

class ContainerGroupDnsConfig {
  /// The list of DNS server IP addresses.
  final pulumi.Input<List<String>>? nameServers;

  /// The structure of options. See `options` below.
  final pulumi.Input<List<ContainerGroupDnsConfigOption>>? options;

  /// The list of DNS lookup domains.
  final pulumi.Input<List<String>>? searches;

  /// Creates a new [ContainerGroupDnsConfig].
  /// [nameServers] The list of DNS server IP addresses.
  /// [options] The structure of options. See `options` below.
  /// [searches] The list of DNS lookup domains.
  ContainerGroupDnsConfig({this.nameServers, this.options, this.searches});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameServers': ?nameServers,
      'options':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupDnsConfigOption>,
            List<Map<String, dynamic>>
          >(
            options,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupDnsConfigOption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'searches': ?searches,
    };
  }

  factory ContainerGroupDnsConfig.fromMap(Map<String, dynamic> map) {
    return ContainerGroupDnsConfig(
      nameServers: (() {
        final guardedValue = map['nameServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ContainerGroupDnsConfigOption>(
            guardedValue,
            (value) => ContainerGroupDnsConfigOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      searches: (() {
        final guardedValue = map['searches'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
