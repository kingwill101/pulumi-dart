// ignore_for_file: unused_element, unnecessary_cast

import 'identity_model_response.dart';

/// VMware DRA model custom properties.
class VMwareDraModelCustomPropertiesResponse {
  /// Gets or sets the BIOS Id of the DRA machine.
  final String biosId;
  /// Gets or sets the instance type.
  /// Expected value is 'VMware'.
  final String instanceType;
  /// Identity model.
  final IdentityModelResponse marsAuthenticationIdentity;

  /// Creates a new [VMwareDraModelCustomPropertiesResponse].
  /// [biosId] Gets or sets the BIOS Id of the DRA machine.
  /// [instanceType] Gets or sets the instance type.
  /// [marsAuthenticationIdentity] Identity model.
  VMwareDraModelCustomPropertiesResponse({
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

  factory VMwareDraModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMwareDraModelCustomPropertiesResponse(
      biosId: map['biosId'] as String,
      instanceType: map['instanceType'] as String,
      marsAuthenticationIdentity: IdentityModelResponse.fromMap((map['marsAuthenticationIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

