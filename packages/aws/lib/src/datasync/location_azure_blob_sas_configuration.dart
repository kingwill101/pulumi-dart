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
    return <String, dynamic>{
      'token': token,
    };
  }

  factory LocationAzureBlobSasConfiguration.fromMap(Map<String, dynamic> map) {
    return LocationAzureBlobSasConfiguration(
      token: map['token'] as String,
    );
  }
}

