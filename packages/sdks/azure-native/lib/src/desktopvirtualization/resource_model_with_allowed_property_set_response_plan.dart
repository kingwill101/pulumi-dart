// ignore_for_file: unused_element, unnecessary_cast


class ResourceModelWithAllowedPropertySetResponsePlan {
  /// A user defined name of the 3rd Party Artifact that is being procured.
  final String name;
  /// The 3rd Party artifact that is being procured. E.g. NewRelic. Product maps to the OfferID specified for the artifact at the time of Data Market onboarding.
  final String product;
  /// A publisher provided promotion code as provisioned in Data Market for the said product/artifact.
  final String? promotionCode;
  /// The publisher of the 3rd Party Artifact that is being bought. E.g. NewRelic
  final String publisher;
  /// The version of the desired product/artifact.
  final String? version;

  /// Creates a new [ResourceModelWithAllowedPropertySetResponsePlan].
  /// [name] A user defined name of the 3rd Party Artifact that is being procured.
  /// [product] The 3rd Party artifact that is being procured. E.g. NewRelic. Product maps to the OfferID specified for the artifact at the time of Data Market onboarding.
  /// [promotionCode] A publisher provided promotion code as provisioned in Data Market for the said product/artifact.
  /// [publisher] The publisher of the 3rd Party Artifact that is being bought. E.g. NewRelic
  /// [version] The version of the desired product/artifact.
  ResourceModelWithAllowedPropertySetResponsePlan({
    required this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'promotionCode': ?promotionCode,
      'publisher': publisher,
      'version': ?version,
    };
  }

  factory ResourceModelWithAllowedPropertySetResponsePlan.fromMap(Map<String, dynamic> map) {
    return ResourceModelWithAllowedPropertySetResponsePlan(
      name: map['name'] as String,
      product: map['product'] as String,
      promotionCode: map['promotionCode'] == null ? null : map['promotionCode'] as String,
      publisher: map['publisher'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

