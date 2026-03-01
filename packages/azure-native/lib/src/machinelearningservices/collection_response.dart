// ignore_for_file: unused_element, unnecessary_cast


class CollectionResponse {
  /// The msi client id used to collect logging to blob storage. If it's null,backend will pick a registered endpoint identity to auth.
  final String? clientId;
  /// Enable or disable data collection.
  final String? dataCollectionMode;
  /// The data asset arm resource id. Client side will ensure data asset is pointing to the blob storage, and backend will collect data to the blob storage.
  final String? dataId;
  /// The sampling rate for collection. Sampling rate 1.0 means we collect 100% of data by default.
  final double? samplingRate;

  /// Creates a new [CollectionResponse].
  /// [clientId] The msi client id used to collect logging to blob storage. If it's null,backend will pick a registered endpoint identity to auth.
  /// [dataCollectionMode] Enable or disable data collection.
  /// [dataId] The data asset arm resource id. Client side will ensure data asset is pointing to the blob storage, and backend will collect data to the blob storage.
  /// [samplingRate] The sampling rate for collection. Sampling rate 1.0 means we collect 100% of data by default.
  CollectionResponse({
    this.clientId,
    this.dataCollectionMode,
    this.dataId,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'dataCollectionMode': ?dataCollectionMode,
      'dataId': ?dataId,
      'samplingRate': ?samplingRate,
    };
  }

  factory CollectionResponse.fromMap(Map<String, dynamic> map) {
    return CollectionResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      dataCollectionMode: map['dataCollectionMode'] == null ? null : map['dataCollectionMode'] as String,
      dataId: map['dataId'] == null ? null : map['dataId'] as String,
      samplingRate: map['samplingRate'] == null ? null : map['samplingRate'] as double,
    );
  }
}

