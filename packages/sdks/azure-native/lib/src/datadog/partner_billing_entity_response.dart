// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Partner Billing details associated with the resource.
class PartnerBillingEntityResponse {
  /// The Datadog Organization Id.
  final pulumi.Input<String>? id;
  /// The Datadog Organization Name.
  final pulumi.Input<String>? name;
  /// Link to the datadog organization page
  final pulumi.Input<String>? partnerEntityUri;

  /// Creates a new [PartnerBillingEntityResponse].
  /// [id] The Datadog Organization Id.
  /// [name] The Datadog Organization Name.
  /// [partnerEntityUri] Link to the datadog organization page
  const PartnerBillingEntityResponse({
    this.id,
    this.name,
    this.partnerEntityUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'partnerEntityUri': ?partnerEntityUri,
    };
  }

  factory PartnerBillingEntityResponse.fromMap(Map<String, dynamic> map) {
    return PartnerBillingEntityResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerEntityUri: (() { final guardedValue = map['partnerEntityUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
