// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID of an IPConfiguration resource
class IPConfigurationArmReference {
  /// The Azure Resource ID of an IPConfiguration resource
  final pulumi.Input<String>? resourceId;

  /// Creates a new [IPConfigurationArmReference].
  /// [resourceId] The Azure Resource ID of an IPConfiguration resource
  const IPConfigurationArmReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory IPConfigurationArmReference.fromMap(Map<String, dynamic> map) {
    return IPConfigurationArmReference(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

