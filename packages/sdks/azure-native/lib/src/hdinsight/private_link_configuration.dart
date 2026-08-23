// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration.dart';

/// The private link configuration.
class PrivateLinkConfiguration {
  /// The HDInsight private linkable sub-resource name to apply the private link configuration to. For example, 'headnode', 'gateway', 'edgenode'.
  final pulumi.Input<String> groupId;
  /// The IP configurations for the private link service.
  final pulumi.Input<List<IPConfiguration>> ipConfigurations;
  /// The name of private link configuration.
  final pulumi.Input<String> name;

  /// Creates a new [PrivateLinkConfiguration].
  /// [groupId] The HDInsight private linkable sub-resource name to apply the private link configuration to. For example, 'headnode', 'gateway', 'edgenode'.
  /// [ipConfigurations] The IP configurations for the private link service.
  /// [name] The name of private link configuration.
  const PrivateLinkConfiguration({
    required this.groupId,
    required this.ipConfigurations,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'ipConfigurations': pulumi.Input.mapInputValue<List<IPConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory PrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return PrivateLinkConfiguration(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfiguration>(map['ipConfigurations']!, (value) => IPConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
