// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration.dart';

/// The private link configuration.
class PrivateLinkConfiguration {
  /// The HDInsight private linkable sub-resource name to apply the private link configuration to. For example, 'headnode', 'gateway', 'edgenode'.
  final String groupId;
  /// The IP configurations for the private link service.
  final List<IPConfiguration> ipConfigurations;
  /// The name of private link configuration.
  final String name;

  /// Creates a new [PrivateLinkConfiguration].
  /// [groupId] The HDInsight private linkable sub-resource name to apply the private link configuration to. For example, 'headnode', 'gateway', 'edgenode'.
  /// [ipConfigurations] The IP configurations for the private link service.
  /// [name] The name of private link configuration.
  PrivateLinkConfiguration({
    required this.groupId,
    required this.ipConfigurations,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'ipConfigurations': pulumi.Input.encodeList<IPConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'name': name,
    };
  }

  factory PrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return PrivateLinkConfiguration(
      groupId: map['groupId'] as String,
      ipConfigurations: pulumi.Input.decodeList<IPConfiguration>(map['ipConfigurations'], (value) => IPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

