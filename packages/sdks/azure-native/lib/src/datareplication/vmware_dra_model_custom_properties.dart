// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_model.dart';

/// VMware DRA model custom properties.
class VMwareDraModelCustomProperties {
  /// Gets or sets the BIOS Id of the DRA machine.
  final pulumi.Input<String> biosId;
  /// Gets or sets the instance type.
  /// Expected value is 'VMware'.
  final pulumi.Input<String> instanceType;
  /// Identity model.
  final pulumi.Input<IdentityModel> marsAuthenticationIdentity;

  /// Creates a new [VMwareDraModelCustomProperties].
  /// [biosId] Gets or sets the BIOS Id of the DRA machine.
  /// [instanceType] Gets or sets the instance type.
  /// [marsAuthenticationIdentity] Identity model.
  VMwareDraModelCustomProperties({
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

  factory VMwareDraModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return VMwareDraModelCustomProperties(
      biosId: (map['biosId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      marsAuthenticationIdentity: (IdentityModel.fromMap((map['marsAuthenticationIdentity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

