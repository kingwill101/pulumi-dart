// ignore_for_file: unused_element, unnecessary_cast

class LocationAzureBlobSasConfiguration {
  /// A SAS token that provides permissions to access your Azure Blob Storage.
  final String token;

  /// Creates a new [LocationAzureBlobSasConfiguration].
  /// [token] A SAS token that provides permissions to access your Azure Blob Storage.
  LocationAzureBlobSasConfiguration({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }

  factory LocationAzureBlobSasConfiguration.fromMap(Map<String, dynamic> map) {
    return LocationAzureBlobSasConfiguration(
      token: map['token'] as String,
    );
  }
}
