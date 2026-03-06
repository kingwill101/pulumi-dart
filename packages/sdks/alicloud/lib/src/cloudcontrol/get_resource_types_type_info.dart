// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceTypesTypeInfo {
  /// Payment formpaid (paid)(free).
  final pulumi.Input<String> chargeType;
  /// Delivery Levelcenter (centralized deployment level)region (regional deployment level)zone (Availability zone deployment level).
  final pulumi.Input<String> deliveryScope;
  /// Resource type description.
  final pulumi.Input<String> description;
  /// The resource type name.
  final pulumi.Input<String> title;

  /// Creates a new [GetResourceTypesTypeInfo].
  /// [chargeType] Payment formpaid (paid)(free).
  /// [deliveryScope] Delivery Levelcenter (centralized deployment level)region (regional deployment level)zone (Availability zone deployment level).
  /// [description] Resource type description.
  /// [title] The resource type name.
  const GetResourceTypesTypeInfo({
    required this.chargeType,
    required this.deliveryScope,
    required this.description,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chargeType': chargeType,
      'deliveryScope': deliveryScope,
      'description': description,
      'title': title,
    };
  }

  factory GetResourceTypesTypeInfo.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesTypeInfo(
      chargeType: pulumi.Input.fromValue(map['chargeType'] as String),
      deliveryScope: pulumi.Input.fromValue(map['deliveryScope'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

