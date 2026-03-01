// ignore_for_file: unused_element, unnecessary_cast

/// Contains details of the data provider.
class DataProviderResponse {
  /// Optional. Name of the data provider.
  final String name;

  /// Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  final String primaryContact;

  /// Creates a new [DataProviderResponse].
  /// [name] Optional. Name of the data provider.
  /// [primaryContact] Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  DataProviderResponse({required this.name, required this.primaryContact});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'primaryContact': primaryContact};
  }

  factory DataProviderResponse.fromMap(Map<String, dynamic> map) {
    return DataProviderResponse(
      name: map['name'] as String,
      primaryContact: map['primaryContact'] as String,
    );
  }
}
