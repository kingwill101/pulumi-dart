// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for ownership voucher.
class OwnershipVoucherDetails {
  /// Owner key type
  final pulumi.Input<String> ownerKeyType;
  /// Ownership voucher in base64 encoded format
  final pulumi.Input<String> ownershipVoucher;

  /// Creates a new [OwnershipVoucherDetails].
  /// [ownerKeyType] Owner key type
  /// [ownershipVoucher] Ownership voucher in base64 encoded format
  OwnershipVoucherDetails({
    required this.ownerKeyType,
    required this.ownershipVoucher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownerKeyType': ownerKeyType,
      'ownershipVoucher': ownershipVoucher,
    };
  }

  factory OwnershipVoucherDetails.fromMap(Map<String, dynamic> map) {
    return OwnershipVoucherDetails(
      ownerKeyType: pulumi.Input.fromValue(map['ownerKeyType'] as String),
      ownershipVoucher: pulumi.Input.fromValue(map['ownershipVoucher'] as String),
    );
  }
}

