// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the return carrier and customer's account with the carrier.
class ReturnShipping {
  /// The customer's account number with the carrier.
  final String carrierAccountNumber;
  /// The carrier's name.
  final String carrierName;

  /// Creates a new [ReturnShipping].
  /// [carrierAccountNumber] The customer's account number with the carrier.
  /// [carrierName] The carrier's name.
  ReturnShipping({
    required this.carrierAccountNumber,
    required this.carrierName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierAccountNumber': carrierAccountNumber,
      'carrierName': carrierName,
    };
  }

  factory ReturnShipping.fromMap(Map<String, dynamic> map) {
    return ReturnShipping(
      carrierAccountNumber: map['carrierAccountNumber'] as String,
      carrierName: map['carrierName'] as String,
    );
  }
}

