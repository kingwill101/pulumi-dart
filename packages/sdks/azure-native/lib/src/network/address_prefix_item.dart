// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Address prefix item.
class AddressPrefixItem {
  /// Address prefix.
  final pulumi.Input<String>? addressPrefix;
  /// Address prefix type.
  final pulumi.Input<String>? addressPrefixType;

  /// Creates a new [AddressPrefixItem].
  /// [addressPrefix] Address prefix.
  /// [addressPrefixType] Address prefix type.
  AddressPrefixItem({
    this.addressPrefix,
    this.addressPrefixType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixType': ?addressPrefixType,
    };
  }

  factory AddressPrefixItem.fromMap(Map<String, dynamic> map) {
    return AddressPrefixItem(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      addressPrefixType: map['addressPrefixType'] == null ? null : (map['addressPrefixType']! as String).input(),
    );
  }
}

