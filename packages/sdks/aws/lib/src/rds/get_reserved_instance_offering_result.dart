// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReservedInstanceOffering.
class GetReservedInstanceOfferingResult {
  /// Currency code for the reserved DB instance.
  final String currencyCode;
  final String dbInstanceClass;
  final int duration;
  /// Fixed price charged for this reserved DB instance.
  final double fixedPrice;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool multiAz;
  /// Unique identifier for the reservation.
  final String offeringId;
  final String offeringType;
  final String productDescription;
  final String region;

  /// Creates a new [GetReservedInstanceOfferingResult].
  /// [currencyCode] Currency code for the reserved DB instance.
  /// [dbInstanceClass] Required.
  /// [duration] Required.
  /// [fixedPrice] Fixed price charged for this reserved DB instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [multiAz] Required.
  /// [offeringId] Unique identifier for the reservation.
  /// [offeringType] Required.
  /// [productDescription] Required.
  /// [region] Required.
  const GetReservedInstanceOfferingResult({
    required this.currencyCode,
    required this.dbInstanceClass,
    required this.duration,
    required this.fixedPrice,
    required this.id,
    required this.multiAz,
    required this.offeringId,
    required this.offeringType,
    required this.productDescription,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currencyCode': currencyCode,
      'dbInstanceClass': dbInstanceClass,
      'duration': duration,
      'fixedPrice': fixedPrice,
      'id': id,
      'multiAz': multiAz,
      'offeringId': offeringId,
      'offeringType': offeringType,
      'productDescription': productDescription,
      'region': region,
    };
  }

  factory GetReservedInstanceOfferingResult.fromMap(Map<String, dynamic> map) {
    return GetReservedInstanceOfferingResult(
      currencyCode: map['currencyCode'] as String,
      dbInstanceClass: map['dbInstanceClass'] as String,
      duration: map['duration'] as int,
      fixedPrice: map['fixedPrice'] as double,
      id: map['id'] as String,
      multiAz: map['multiAz'] as bool,
      offeringId: map['offeringId'] as String,
      offeringType: map['offeringType'] as String,
      productDescription: map['productDescription'] as String,
      region: map['region'] as String,
    );
  }
}

