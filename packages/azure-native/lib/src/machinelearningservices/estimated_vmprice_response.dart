// ignore_for_file: unused_element, unnecessary_cast


/// The estimated price info for using a VM of a particular OS type, tier, etc.
class EstimatedVMPriceResponse {
  /// Operating system type used by the VM.
  final String osType;
  /// The price charged for using the VM.
  final double retailPrice;
  /// The type of the VM.
  final String vmTier;

  /// Creates a new [EstimatedVMPriceResponse].
  /// [osType] Operating system type used by the VM.
  /// [retailPrice] The price charged for using the VM.
  /// [vmTier] The type of the VM.
  EstimatedVMPriceResponse({
    required this.osType,
    required this.retailPrice,
    required this.vmTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': osType,
      'retailPrice': retailPrice,
      'vmTier': vmTier,
    };
  }

  factory EstimatedVMPriceResponse.fromMap(Map<String, dynamic> map) {
    return EstimatedVMPriceResponse(
      osType: map['osType'] as String,
      retailPrice: map['retailPrice'] as double,
      vmTier: map['vmTier'] as String,
    );
  }
}

