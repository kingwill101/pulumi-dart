// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReservedCacheNodeOffering.
class GetReservedCacheNodeOfferingResult {
  final String? cacheNodeType;
  final String? duration;
  /// Fixed price charged for this reserved cache node.
  final double? fixedPrice;
  /// Unique identifier for the reservation.
  final String? offeringId;
  final String? offeringType;
  final String? productDescription;
  final String? region;

  /// Creates a new [GetReservedCacheNodeOfferingResult].
  /// [cacheNodeType] Optional.
  /// [duration] Optional.
  /// [fixedPrice] Fixed price charged for this reserved cache node.
  /// [offeringId] Unique identifier for the reservation.
  /// [offeringType] Optional.
  /// [productDescription] Optional.
  /// [region] Optional.
  const GetReservedCacheNodeOfferingResult({
    this.cacheNodeType,
    this.duration,
    this.fixedPrice,
    this.offeringId,
    this.offeringType,
    this.productDescription,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeType': ?cacheNodeType,
      'duration': ?duration,
      'fixedPrice': ?fixedPrice,
      'offeringId': ?offeringId,
      'offeringType': ?offeringType,
      'productDescription': ?productDescription,
      'region': ?region,
    };
  }

  factory GetReservedCacheNodeOfferingResult.fromMap(Map<String, dynamic> map) {
    return GetReservedCacheNodeOfferingResult(
      cacheNodeType: (() { final guardedValue = map['cacheNodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fixedPrice: (() { final guardedValue = map['fixedPrice']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      offeringId: (() { final guardedValue = map['offeringId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offeringType: (() { final guardedValue = map['offeringType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productDescription: (() { final guardedValue = map['productDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
