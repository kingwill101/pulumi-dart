// ignore_for_file: unused_element, unnecessary_cast


/// Details for ownership voucher.
class OwnershipVoucherDetailsResponse {
  /// Owner key type
  final String ownerKeyType;
  /// Ownership voucher in base64 encoded format
  final String ownershipVoucher;

  /// Creates a new [OwnershipVoucherDetailsResponse].
  /// [ownerKeyType] Owner key type
  /// [ownershipVoucher] Ownership voucher in base64 encoded format
  OwnershipVoucherDetailsResponse({
    required this.ownerKeyType,
    required this.ownershipVoucher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownerKeyType': ownerKeyType,
      'ownershipVoucher': ownershipVoucher,
    };
  }

  factory OwnershipVoucherDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OwnershipVoucherDetailsResponse(
      ownerKeyType: map['ownerKeyType'] as String,
      ownershipVoucher: map['ownershipVoucher'] as String,
    );
  }
}

