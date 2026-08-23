// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the return carrier and customer's account with the carrier.
class ReturnShipping {
  /// The customer's account number with the carrier.
  final pulumi.Input<String> carrierAccountNumber;
  /// The carrier's name.
  final pulumi.Input<String> carrierName;

  /// Creates a new [ReturnShipping].
  /// [carrierAccountNumber] The customer's account number with the carrier.
  /// [carrierName] The carrier's name.
  const ReturnShipping({
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
      carrierAccountNumber: pulumi.Input.fromValue(map['carrierAccountNumber'] as String),
      carrierName: pulumi.Input.fromValue(map['carrierName'] as String),
    );
  }
}
