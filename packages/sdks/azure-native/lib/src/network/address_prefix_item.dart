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
  const AddressPrefixItem({
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
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixType: (() { final guardedValue = map['addressPrefixType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

