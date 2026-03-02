// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for plan on a custom image.
class CustomImagePropertiesFromPlanResponse {
  /// The id of the plan, equivalent to name of the plan
  final pulumi.Input<String>? id;
  /// The offer for the plan from the marketplace image the custom image is derived from
  final pulumi.Input<String>? offer;
  /// The publisher for the plan from the marketplace image the custom image is derived from
  final pulumi.Input<String>? publisher;

  /// Creates a new [CustomImagePropertiesFromPlanResponse].
  /// [id] The id of the plan, equivalent to name of the plan
  /// [offer] The offer for the plan from the marketplace image the custom image is derived from
  /// [publisher] The publisher for the plan from the marketplace image the custom image is derived from
  CustomImagePropertiesFromPlanResponse({
    this.id,
    this.offer,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'offer': ?offer,
      'publisher': ?publisher,
    };
  }

  factory CustomImagePropertiesFromPlanResponse.fromMap(Map<String, dynamic> map) {
    return CustomImagePropertiesFromPlanResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      offer: map['offer'] == null ? null : (map['offer']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
    );
  }
}

