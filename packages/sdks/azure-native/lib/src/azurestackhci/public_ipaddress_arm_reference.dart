// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID of a Public IP resource
class PublicIPAddressArmReference {
  /// The Azure Resource ID of a Public IP resource
  final pulumi.Input<String>? resourceId;

  /// Creates a new [PublicIPAddressArmReference].
  /// [resourceId] The Azure Resource ID of a Public IP resource
  PublicIPAddressArmReference({this.resourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceId': ?resourceId};
  }

  factory PublicIPAddressArmReference.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressArmReference(
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
