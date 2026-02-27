// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the data provider.
class DataProviderAnalyticshubV1beta1 {
  /// Optional. Name of the data provider.
  final String? name;

  /// Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  final String? primaryContact;

  DataProviderAnalyticshubV1beta1({
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

  factory DataProviderAnalyticshubV1beta1.fromMap(Map<String, dynamic> map) {
    return DataProviderAnalyticshubV1beta1(
      name: map['name'] == null ? null : map['name'] as String,
      primaryContact: map['primaryContact'] == null
          ? null
          : map['primaryContact'] as String,
    );
  }
}
