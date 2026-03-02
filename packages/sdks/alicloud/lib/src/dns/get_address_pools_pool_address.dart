// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddressPoolsPoolAddress {
  /// The address that you want to add to the address pool.
  final pulumi.Input<String> address;
  /// The source region of the address.
  final pulumi.Input<String> attributeInfo;
  /// The weight of the address.
  final pulumi.Input<int> lbaWeight;
  /// The type of the address.
  final pulumi.Input<String> mode;
  /// The description of the address.
  final pulumi.Input<String> remark;

  /// Creates a new [GetAddressPoolsPoolAddress].
  /// [address] The address that you want to add to the address pool.
  /// [attributeInfo] The source region of the address.
  /// [lbaWeight] The weight of the address.
  /// [mode] The type of the address.
  /// [remark] The description of the address.
  GetAddressPoolsPoolAddress({
    required this.address,
    required this.attributeInfo,
    required this.lbaWeight,
    required this.mode,
    required this.remark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'attributeInfo': attributeInfo,
      'lbaWeight': lbaWeight,
      'mode': mode,
      'remark': remark,
    };
  }

  factory GetAddressPoolsPoolAddress.fromMap(Map<String, dynamic> map) {
    return GetAddressPoolsPoolAddress(
      address: (map['address'] as String).input(),
      attributeInfo: (map['attributeInfo'] as String).input(),
      lbaWeight: (map['lbaWeight'] as int).input(),
      mode: (map['mode'] as String).input(),
      remark: (map['remark'] as String).input(),
    );
  }
}

