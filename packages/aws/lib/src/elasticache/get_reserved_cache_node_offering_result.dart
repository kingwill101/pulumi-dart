// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReservedCacheNodeOffering.
class GetReservedCacheNodeOfferingResult {
  final String cacheNodeType;
  final String duration;
  /// Fixed price charged for this reserved cache node.
  final double fixedPrice;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Unique identifier for the reservation.
  final String offeringId;
  final String offeringType;
  final String productDescription;
  final String region;

  /// Creates a new [GetReservedCacheNodeOfferingResult].
  /// [cacheNodeType] Required.
  /// [duration] Required.
  /// [fixedPrice] Fixed price charged for this reserved cache node.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [offeringId] Unique identifier for the reservation.
  /// [offeringType] Required.
  /// [productDescription] Required.
  /// [region] Required.
  GetReservedCacheNodeOfferingResult({
    required this.cacheNodeType,
    required this.duration,
    required this.fixedPrice,
    required this.id,
    required this.offeringId,
    required this.offeringType,
    required this.productDescription,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeType': cacheNodeType,
      'duration': duration,
      'fixedPrice': fixedPrice,
      'id': id,
      'offeringId': offeringId,
      'offeringType': offeringType,
      'productDescription': productDescription,
      'region': region,
    };
  }

  factory GetReservedCacheNodeOfferingResult.fromMap(Map<String, dynamic> map) {
    return GetReservedCacheNodeOfferingResult(
      cacheNodeType: map['cacheNodeType'] as String,
      duration: map['duration'] as String,
      fixedPrice: map['fixedPrice'] as double,
      id: map['id'] as String,
      offeringId: map['offeringId'] as String,
      offeringType: map['offeringType'] as String,
      productDescription: map['productDescription'] as String,
      region: map['region'] as String,
    );
  }
}

