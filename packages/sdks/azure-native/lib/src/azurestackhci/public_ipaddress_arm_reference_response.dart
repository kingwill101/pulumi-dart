// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID of a Public IP resource
class PublicIPAddressArmReferenceResponse {
  /// The Azure Resource ID of a Public IP resource
  final pulumi.Input<String>? resourceId;

  /// Creates a new [PublicIPAddressArmReferenceResponse].
  /// [resourceId] The Azure Resource ID of a Public IP resource
  PublicIPAddressArmReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory PublicIPAddressArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressArmReferenceResponse(
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

