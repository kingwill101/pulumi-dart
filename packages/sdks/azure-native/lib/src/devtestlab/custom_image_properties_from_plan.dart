// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for plan on a custom image.
class CustomImagePropertiesFromPlan {
  /// The id of the plan, equivalent to name of the plan
  final pulumi.Input<String>? id;
  /// The offer for the plan from the marketplace image the custom image is derived from
  final pulumi.Input<String>? offer;
  /// The publisher for the plan from the marketplace image the custom image is derived from
  final pulumi.Input<String>? publisher;

  /// Creates a new [CustomImagePropertiesFromPlan].
  /// [id] The id of the plan, equivalent to name of the plan
  /// [offer] The offer for the plan from the marketplace image the custom image is derived from
  /// [publisher] The publisher for the plan from the marketplace image the custom image is derived from
  CustomImagePropertiesFromPlan({
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

  factory CustomImagePropertiesFromPlan.fromMap(Map<String, dynamic> map) {
    return CustomImagePropertiesFromPlan(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

