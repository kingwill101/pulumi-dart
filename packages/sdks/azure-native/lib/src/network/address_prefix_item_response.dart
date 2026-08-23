// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Address prefix item.
class AddressPrefixItemResponse {
  /// Address prefix.
  final pulumi.Input<String>? addressPrefix;
  /// Address prefix type.
  final pulumi.Input<String>? addressPrefixType;

  /// Creates a new [AddressPrefixItemResponse].
  /// [addressPrefix] Address prefix.
  /// [addressPrefixType] Address prefix type.
  const AddressPrefixItemResponse({
    this.addressPrefix,
    this.addressPrefixType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixType': ?addressPrefixType,
    };
  }

  factory AddressPrefixItemResponse.fromMap(Map<String, dynamic> map) {
    return AddressPrefixItemResponse(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressPrefixType: (() { final guardedValue = map['addressPrefixType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
