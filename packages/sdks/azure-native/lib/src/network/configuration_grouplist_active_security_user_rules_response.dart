// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The network configuration group resource
class ConfigurationGrouplistActiveSecurityUserRulesResponse {
  /// A description of the network group.
  final pulumi.Input<String>? description;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Group member type.
  final pulumi.Input<String> memberType;
  /// The provisioning state of the scope assignment resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ConfigurationGrouplistActiveSecurityUserRulesResponse].
  /// [description] A description of the network group.
  /// [id] Resource ID.
  /// [memberType] Group member type.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  const ConfigurationGrouplistActiveSecurityUserRulesResponse({
    this.description,
    this.id,
    required this.memberType,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'memberType': memberType,
      'provisioningState': provisioningState,
    };
  }

  factory ConfigurationGrouplistActiveSecurityUserRulesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationGrouplistActiveSecurityUserRulesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberType: pulumi.Input.fromValue(map['memberType'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
