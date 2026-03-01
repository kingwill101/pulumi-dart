// ignore_for_file: unused_element, unnecessary_cast


/// Partner Billing details associated with the resource.
class PartnerBillingEntityResponse {
  /// The Datadog Organization Id.
  final String? id;
  /// The Datadog Organization Name.
  final String? name;
  /// Link to the datadog organization page
  final String? partnerEntityUri;

  /// Creates a new [PartnerBillingEntityResponse].
  /// [id] The Datadog Organization Id.
  /// [name] The Datadog Organization Name.
  /// [partnerEntityUri] Link to the datadog organization page
  PartnerBillingEntityResponse({
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
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      partnerEntityUri: map['partnerEntityUri'] == null ? null : map['partnerEntityUri'] as String,
    );
  }
}

