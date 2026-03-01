// ignore_for_file: unused_element, unnecessary_cast


class AddressPoolAddress {
  /// The address that you want to add to the address pool.
  final String address;
  /// The source region of the address. expressed as a JSON string. The structure is as follows:
  /// * `LineCodes`: List of home lineCodes.
  /// * `lineCodeRectifyType`: The rectification type of the line code. Default value: `AUTO`. Valid values: `NO_NEED`: no need for rectification. `RECTIFIED`: rectified. `AUTO`: automatic rectification.
  final String attributeInfo;
  /// The weight of the address. **NOTE:** The attribute is valid when the attribute `lba_strategy` is `RATIO`.
  final int? lbaWeight;
  /// The type of the address. Valid values:`SMART`, `ONLINE` and `OFFLINE`.
  final String mode;
  /// The description of the address.
  final String? remark;

  /// Creates a new [AddressPoolAddress].
  /// [address] The address that you want to add to the address pool.
  /// [attributeInfo] The source region of the address. expressed as a JSON string. The structure is as follows:
  /// [lbaWeight] The weight of the address. **NOTE:** The attribute is valid when the attribute `lba_strategy` is `RATIO`.
  /// [mode] The type of the address. Valid values:`SMART`, `ONLINE` and `OFFLINE`.
  /// [remark] The description of the address.
  AddressPoolAddress({
    required this.address,
    required this.attributeInfo,
    this.lbaWeight,
    required this.mode,
    this.remark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'attributeInfo': attributeInfo,
      'lbaWeight': ?lbaWeight,
      'mode': mode,
      'remark': ?remark,
    };
  }

  factory AddressPoolAddress.fromMap(Map<String, dynamic> map) {
    return AddressPoolAddress(
      address: map['address'] as String,
      attributeInfo: map['attributeInfo'] as String,
      lbaWeight: map['lbaWeight'] == null ? null : map['lbaWeight'] as int,
      mode: map['mode'] as String,
      remark: map['remark'] == null ? null : map['remark'] as String,
    );
  }
}

