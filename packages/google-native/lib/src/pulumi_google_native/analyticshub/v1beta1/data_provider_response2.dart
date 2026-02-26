// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the data provider.
class DataProviderResponse2 {
  /// Optional. Name of the data provider.
  final String name;

  /// Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  final String primaryContact;

  DataProviderResponse2({
    required this.name,
    required this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['primaryContact'] = primaryContact;
    return map;
  }

  factory DataProviderResponse2.fromMap(Map<String, dynamic> map) {
    return DataProviderResponse2(
      name: map['name'] as String,
      primaryContact: map['primaryContact'] as String,
    );
  }
}
