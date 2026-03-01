// ignore_for_file: unused_element, unnecessary_cast


/// Address prefix item.
class AddressPrefixItem {
  /// Address prefix.
  final String? addressPrefix;
  /// Address prefix type.
  final String? addressPrefixType;

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
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      addressPrefixType: map['addressPrefixType'] == null ? null : map['addressPrefixType'] as String,
    );
  }
}

