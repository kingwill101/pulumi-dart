// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the data provider.
class DataProviderResponseAnalyticshubV1beta1 {
  /// Optional. Name of the data provider.
  final String name;

  /// Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  final String primaryContact;

  /// Creates a new [DataProviderResponseAnalyticshubV1beta1].
  /// [name] Optional. Name of the data provider.
  /// [primaryContact] Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  DataProviderResponseAnalyticshubV1beta1({
    required this.name,
    required this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['primaryContact'] = primaryContact;
    return map;
  }

  factory DataProviderResponseAnalyticshubV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DataProviderResponseAnalyticshubV1beta1(
      name: map['name'] as String,
      primaryContact: map['primaryContact'] as String,
    );
  }
}
