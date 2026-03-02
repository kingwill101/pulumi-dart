// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_response.dart';

/// The private link configuration.
class PrivateLinkConfigurationResponse {
  /// The HDInsight private linkable sub-resource name to apply the private link configuration to. For example, 'headnode', 'gateway', 'edgenode'.
  final pulumi.Input<String> groupId;
  /// The private link configuration id.
  final pulumi.Input<String> id;
  /// The IP configurations for the private link service.
  final pulumi.Input<List<IPConfigurationResponse>> ipConfigurations;
  /// The name of private link configuration.
  final pulumi.Input<String> name;
  /// The private link configuration provisioning state, which only appears in the response.
  final pulumi.Input<String> provisioningState;
  /// The type of the private link configuration.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateLinkConfigurationResponse].
  /// [groupId] The HDInsight private linkable sub-resource name to apply the private link configuration to. For example, 'headnode', 'gateway', 'edgenode'.
  /// [id] The private link configuration id.
  /// [ipConfigurations] The IP configurations for the private link service.
  /// [name] The name of private link configuration.
  /// [provisioningState] The private link configuration provisioning state, which only appears in the response.
  /// [type] The type of the private link configuration.
  PrivateLinkConfigurationResponse({
    required this.groupId,
    required this.id,
    required this.ipConfigurations,
    required this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'id': id,
      'ipConfigurations': pulumi.Input.mapInputValue<List<IPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory PrivateLinkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkConfigurationResponse(
      groupId: (map['groupId'] as String).input(),
      id: (map['id'] as String).input(),
      ipConfigurations: (pulumi.Input.decodeList<IPConfigurationResponse>(map['ipConfigurations'], (value) => IPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

