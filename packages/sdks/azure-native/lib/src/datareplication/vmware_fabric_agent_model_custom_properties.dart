// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_model.dart';

/// VMware fabric agent model custom properties.
class VMwareFabricAgentModelCustomProperties {
  /// Gets or sets the BIOS Id of the fabric agent machine.
  final pulumi.Input<String> biosId;
  /// Discriminator property for FabricAgentModelCustomProperties.
  /// Expected value is 'VMware'.
  final pulumi.Input<String> instanceType;
  /// Identity model.
  final pulumi.Input<IdentityModel> marsAuthenticationIdentity;

  /// Creates a new [VMwareFabricAgentModelCustomProperties].
  /// [biosId] Gets or sets the BIOS Id of the fabric agent machine.
  /// [instanceType] Discriminator property for FabricAgentModelCustomProperties.
  /// [marsAuthenticationIdentity] Identity model.
  const VMwareFabricAgentModelCustomProperties({
    required this.biosId,
    required this.instanceType,
    required this.marsAuthenticationIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosId': biosId,
      'instanceType': instanceType,
      'marsAuthenticationIdentity': pulumi.Input.mapInputValue<IdentityModel, Map<String, dynamic>>(marsAuthenticationIdentity, (value) => value.toMap()),
    };
  }

  factory VMwareFabricAgentModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return VMwareFabricAgentModelCustomProperties(
      biosId: pulumi.Input.fromValue(map['biosId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      marsAuthenticationIdentity: pulumi.Input.fromValue(IdentityModel.fromMap((map['marsAuthenticationIdentity']! as Map).cast<String, dynamic>())),
    );
  }
}
