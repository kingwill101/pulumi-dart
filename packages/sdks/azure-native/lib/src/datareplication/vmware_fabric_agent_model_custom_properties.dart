// ignore_for_file: unused_element, unnecessary_cast

import 'identity_model.dart';

/// VMware fabric agent model custom properties.
class VMwareFabricAgentModelCustomProperties {
  /// Gets or sets the BIOS Id of the fabric agent machine.
  final String biosId;
  /// Discriminator property for FabricAgentModelCustomProperties.
  /// Expected value is 'VMware'.
  final String instanceType;
  /// Identity model.
  final IdentityModel marsAuthenticationIdentity;

  /// Creates a new [VMwareFabricAgentModelCustomProperties].
  /// [biosId] Gets or sets the BIOS Id of the fabric agent machine.
  /// [instanceType] Discriminator property for FabricAgentModelCustomProperties.
  /// [marsAuthenticationIdentity] Identity model.
  VMwareFabricAgentModelCustomProperties({
    required this.biosId,
    required this.instanceType,
    required this.marsAuthenticationIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosId': biosId,
      'instanceType': instanceType,
      'marsAuthenticationIdentity': marsAuthenticationIdentity.toMap(),
    };
  }

  factory VMwareFabricAgentModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return VMwareFabricAgentModelCustomProperties(
      biosId: map['biosId'] as String,
      instanceType: map['instanceType'] as String,
      marsAuthenticationIdentity: IdentityModel.fromMap((map['marsAuthenticationIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

