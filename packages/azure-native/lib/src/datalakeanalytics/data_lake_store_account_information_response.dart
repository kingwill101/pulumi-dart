// ignore_for_file: unused_element, unnecessary_cast


/// Data Lake Store account information.
class DataLakeStoreAccountInformationResponse {
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// The optional suffix for the Data Lake Store account.
  final String suffix;
  /// The resource type.
  final String type;

  /// Creates a new [DataLakeStoreAccountInformationResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [suffix] The optional suffix for the Data Lake Store account.
  /// [type] The resource type.
  DataLakeStoreAccountInformationResponse({
    required this.id,
    required this.name,
    required this.suffix,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'suffix': suffix,
      'type': type,
    };
  }

  factory DataLakeStoreAccountInformationResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeStoreAccountInformationResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      suffix: map['suffix'] as String,
      type: map['type'] as String,
    );
  }
}

