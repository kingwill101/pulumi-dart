// ignore_for_file: unused_element, unnecessary_cast


class GetResourceTypesTypeInfo {
  /// Payment formpaid (paid)(free).
  final String chargeType;
  /// Delivery Levelcenter (centralized deployment level)region (regional deployment level)zone (Availability zone deployment level).
  final String deliveryScope;
  /// Resource type description.
  final String description;
  /// The resource type name.
  final String title;

  /// Creates a new [GetResourceTypesTypeInfo].
  /// [chargeType] Payment formpaid (paid)(free).
  /// [deliveryScope] Delivery Levelcenter (centralized deployment level)region (regional deployment level)zone (Availability zone deployment level).
  /// [description] Resource type description.
  /// [title] The resource type name.
  GetResourceTypesTypeInfo({
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
      chargeType: map['chargeType'] as String,
      deliveryScope: map['deliveryScope'] as String,
      description: map['description'] as String,
      title: map['title'] as String,
    );
  }
}

