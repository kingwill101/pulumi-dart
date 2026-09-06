// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The network configuration group resource
class ConfigurationGrouplistNetworkManagerEffectiveSecurityAdminRulesResponse {
  /// A description of the network group.
  final pulumi.Input<String?>? description;
  /// Network group ID.
  final pulumi.Input<String?>? id;
  /// The type of the group member.
  final pulumi.Input<String?>? memberType;
  /// The provisioning state of the scope assignment resource.
  final pulumi.Input<String> provisioningState;
  /// Unique identifier for this resource.
  final pulumi.Input<String> resourceGuid;

  /// Creates a new [ConfigurationGrouplistNetworkManagerEffectiveSecurityAdminRulesResponse].
  /// [description] A description of the network group.
  /// [id] Network group ID.
  /// [memberType] The type of the group member.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  /// [resourceGuid] Unique identifier for this resource.
  const ConfigurationGrouplistNetworkManagerEffectiveSecurityAdminRulesResponse({
    this.description,
    this.id,
    this.memberType,
    required this.provisioningState,
    required this.resourceGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'memberType': ?memberType,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
    };
  }

  factory ConfigurationGrouplistNetworkManagerEffectiveSecurityAdminRulesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationGrouplistNetworkManagerEffectiveSecurityAdminRulesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberType: (() { final guardedValue = map['memberType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
    );
  }
}
