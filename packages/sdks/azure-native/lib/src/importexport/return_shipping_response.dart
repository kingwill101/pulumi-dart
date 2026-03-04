// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the return carrier and customer's account with the carrier.
class ReturnShippingResponse {
  /// The customer's account number with the carrier.
  final pulumi.Input<String> carrierAccountNumber;

  /// The carrier's name.
  final pulumi.Input<String> carrierName;

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
      carrierAccountNumber: pulumi.Input.fromValue(
        map['carrierAccountNumber'] as String,
      ),
      carrierName: pulumi.Input.fromValue(map['carrierName'] as String),
    );
  }
}
