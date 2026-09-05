// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReservedInstanceOffering.
class GetReservedInstanceOfferingResult {
  /// Currency code for the reserved DB instance.
  final String? currencyCode;
  final String? dbInstanceClass;
  final int? duration;
  /// Fixed price charged for this reserved DB instance.
  final double? fixedPrice;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? multiAz;
  /// Unique identifier for the reservation.
  final String? offeringId;
  final String? offeringType;
  final String? productDescription;
  final String? region;

  /// Creates a new [GetReservedInstanceOfferingResult].
  /// [currencyCode] Currency code for the reserved DB instance.
  /// [dbInstanceClass] Optional.
  /// [duration] Optional.
  /// [fixedPrice] Fixed price charged for this reserved DB instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [multiAz] Optional.
  /// [offeringId] Unique identifier for the reservation.
  /// [offeringType] Optional.
  /// [productDescription] Optional.
  /// [region] Optional.
  const GetReservedInstanceOfferingResult({
    this.currencyCode,
    this.dbInstanceClass,
    this.duration,
    this.fixedPrice,
    this.id,
    this.multiAz,
    this.offeringId,
    this.offeringType,
    this.productDescription,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currencyCode': ?currencyCode,
      'dbInstanceClass': ?dbInstanceClass,
      'duration': ?duration,
      'fixedPrice': ?fixedPrice,
      'id': ?id,
      'multiAz': ?multiAz,
      'offeringId': ?offeringId,
      'offeringType': ?offeringType,
      'productDescription': ?productDescription,
      'region': ?region,
    };
  }

  factory GetReservedInstanceOfferingResult.fromMap(Map<String, dynamic> map) {
    return GetReservedInstanceOfferingResult(
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstanceClass: (() { final guardedValue = map['dbInstanceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      fixedPrice: (() { final guardedValue = map['fixedPrice']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiAz: (() { final guardedValue = map['multiAz']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      offeringId: (() { final guardedValue = map['offeringId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offeringType: (() { final guardedValue = map['offeringType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productDescription: (() { final guardedValue = map['productDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
