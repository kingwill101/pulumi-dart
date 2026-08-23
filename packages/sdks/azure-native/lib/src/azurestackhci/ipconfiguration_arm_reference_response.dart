// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID of an IPConfiguration resource
class IPConfigurationArmReferenceResponse {
  /// The Azure Resource ID of an IPConfiguration resource
  final pulumi.Input<String>? resourceId;

  /// Creates a new [IPConfigurationArmReferenceResponse].
  /// [resourceId] The Azure Resource ID of an IPConfiguration resource
  const IPConfigurationArmReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory IPConfigurationArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationArmReferenceResponse(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
