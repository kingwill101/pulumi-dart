// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the data provider.
class DataProvider {
  /// Optional. Name of the data provider.
  final String? name;

  /// Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  final String? primaryContact;

  /// Creates a new [DataProvider].
  /// [name] Optional. Name of the data provider.
  /// [primaryContact] Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  DataProvider({
    this.name,
    this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final primaryContactValue = primaryContact;
    if (primaryContactValue != null) {
      map['primaryContact'] = primaryContactValue;
    }
    return map;
  }

  factory DataProvider.fromMap(Map<String, dynamic> map) {
    return DataProvider(
      name: map['name'] == null ? null : map['name'] as String,
      primaryContact: map['primaryContact'] == null
          ? null
          : map['primaryContact'] as String,
    );
  }
}
