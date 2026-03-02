// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom Domain of a Container App
class CustomDomainResponse {
  /// Custom Domain binding type.
  final pulumi.Input<String>? bindingType;
  /// Resource Id of the Certificate to be bound to this hostname. Must exist in the Managed Environment.
  final pulumi.Input<String>? certificateId;
  /// Hostname.
  final pulumi.Input<String> name;

  /// Creates a new [CustomDomainResponse].
  /// [bindingType] Custom Domain binding type.
  /// [certificateId] Resource Id of the Certificate to be bound to this hostname. Must exist in the Managed Environment.
  /// [name] Hostname.
  CustomDomainResponse({
    this.bindingType,
    this.certificateId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingType': ?bindingType,
      'certificateId': ?certificateId,
      'name': name,
    };
  }

  factory CustomDomainResponse.fromMap(Map<String, dynamic> map) {
    return CustomDomainResponse(
      bindingType: map['bindingType'] == null ? null : (map['bindingType'] as String).input(),
      certificateId: map['certificateId'] == null ? null : (map['certificateId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

