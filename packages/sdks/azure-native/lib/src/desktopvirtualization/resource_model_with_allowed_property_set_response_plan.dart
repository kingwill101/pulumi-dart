// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceModelWithAllowedPropertySetResponsePlan {
  /// A user defined name of the 3rd Party Artifact that is being procured.
  final pulumi.Input<String> name;

  /// The 3rd Party artifact that is being procured. E.g. NewRelic. Product maps to the OfferID specified for the artifact at the time of Data Market onboarding.
  final pulumi.Input<String> product;

  /// A publisher provided promotion code as provisioned in Data Market for the said product/artifact.
  final pulumi.Input<String>? promotionCode;

  /// The publisher of the 3rd Party Artifact that is being bought. E.g. NewRelic
  final pulumi.Input<String> publisher;

  /// The version of the desired product/artifact.
  final pulumi.Input<String>? version;

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

  factory ResourceModelWithAllowedPropertySetResponsePlan.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceModelWithAllowedPropertySetResponsePlan(
      name: pulumi.Input.fromValue(map['name'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      promotionCode: (() {
        final guardedValue = map['promotionCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
