// ignore_for_file: unused_element, unnecessary_cast

import 'identity_model_response.dart';

/// VMware fabric agent model custom properties.
class VMwareFabricAgentModelCustomPropertiesResponse {
  /// Gets or sets the BIOS Id of the fabric agent machine.
  final String biosId;
  /// Discriminator property for FabricAgentModelCustomProperties.
  /// Expected value is 'VMware'.
  final String instanceType;
  /// Identity model.
  final IdentityModelResponse marsAuthenticationIdentity;

  /// Creates a new [VMwareFabricAgentModelCustomPropertiesResponse].
  /// [biosId] Gets or sets the BIOS Id of the fabric agent machine.
  /// [instanceType] Discriminator property for FabricAgentModelCustomProperties.
  /// [marsAuthenticationIdentity] Identity model.
  VMwareFabricAgentModelCustomPropertiesResponse({
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

  factory VMwareFabricAgentModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMwareFabricAgentModelCustomPropertiesResponse(
      biosId: map['biosId'] as String,
      instanceType: map['instanceType'] as String,
      marsAuthenticationIdentity: IdentityModelResponse.fromMap((map['marsAuthenticationIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

