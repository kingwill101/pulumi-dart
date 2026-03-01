// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the return carrier and customer's account with the carrier.
class ReturnShippingResponse {
  /// The customer's account number with the carrier.
  final String carrierAccountNumber;
  /// The carrier's name.
  final String carrierName;

  /// Creates a new [ReturnShippingResponse].
  /// [carrierAccountNumber] The customer's account number with the carrier.
  /// [carrierName] The carrier's name.
  ReturnShippingResponse({
    required this.carrierAccountNumber,
    required this.carrierName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierAccountNumber': carrierAccountNumber,
      'carrierName': carrierName,
    };
  }

  factory ReturnShippingResponse.fromMap(Map<String, dynamic> map) {
    return ReturnShippingResponse(
      carrierAccountNumber: map['carrierAccountNumber'] as String,
      carrierName: map['carrierName'] as String,
    );
  }
}

