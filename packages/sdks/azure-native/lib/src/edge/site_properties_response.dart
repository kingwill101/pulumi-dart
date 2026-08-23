// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Site properties
class SitePropertiesResponse {
  /// AddressResource ArmId of Site resource
  final pulumi.Input<String>? addressResourceId;
  /// Description of Site resource
  final pulumi.Input<String>? description;
  /// displayName of Site resource
  final pulumi.Input<String>? displayName;
  /// Provisioning state of last operation
  final pulumi.Input<String> provisioningState;

  /// Creates a new [SitePropertiesResponse].
  /// [addressResourceId] AddressResource ArmId of Site resource
  /// [description] Description of Site resource
  /// [displayName] displayName of Site resource
  /// [provisioningState] Provisioning state of last operation
  const SitePropertiesResponse({
    this.addressResourceId,
    this.description,
    this.displayName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressResourceId': ?addressResourceId,
      'description': ?description,
      'displayName': ?displayName,
      'provisioningState': provisioningState,
    };
  }

  factory SitePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesResponse(
      addressResourceId: (() { final guardedValue = map['addressResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
