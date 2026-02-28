// ignore_for_file: unused_element, unnecessary_cast


/// Contains details of the data provider.
class DataProviderAnalyticshubV1beta1 {
  /// Optional. Name of the data provider.
  final String? name;
  /// Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  final String? primaryContact;

  /// Creates a new [DataProviderAnalyticshubV1beta1].
  /// [name] Optional. Name of the data provider.
  /// [primaryContact] Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  DataProviderAnalyticshubV1beta1({
    this.name,
    this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'primaryContact': ?primaryContact,
    };
  }

  factory DataProviderAnalyticshubV1beta1.fromMap(Map<String, dynamic> map) {
    return DataProviderAnalyticshubV1beta1(
      name: map['name'] == null ? null : map['name'] as String,
      primaryContact: map['primaryContact'] == null ? null : map['primaryContact'] as String,
    );
  }
}

